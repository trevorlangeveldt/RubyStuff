
    makeGet: function(resource, callback) {
        this.submit(resource, 'get', callback, null)
      },
      
        submit: function (resource, method, callback, data) {
        document.title = "MapStraction POC";
        var url = this.token ?  serviceUrl + resource + "&token=" + this.token : serviceUrl + resource;
        var _callback = callback;
        var _this = this;
        this.req = new Request.JSON({
            method: method,
            data: data,
            url: url, 
            onFailure:  function() { _this.handleError((_callback) ? _callback : null) },
            onSuccess: function(response) { _this.handleSuccess((_callback) ? _callback : null, response) }
          });
          if (this.token)
            this.req.setHeader('token', this.token)
        
        this.req.send(); 
        }