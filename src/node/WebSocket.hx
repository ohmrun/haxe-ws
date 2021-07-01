package node;

@:require("ws") extern class WebSocket extends js.html.EventTarget {
	static inline var CONNECTING : Int = 0;
	static inline var OPEN : Int = 1;
	static inline var CLOSING : Int = 2;
	static inline var CLOSED : Int = 3;
	
	
	/**
		The absolute URL of the WebSocket.
	**/
	var url(default,null) : String;
	
	/**
		The current state of the connection.
	**/
	var readyState(default,null) : Int;
	
	/**
		The number of bytes of queued data.
	**/
	var bufferedAmount(default,null) : Int;
	
	/**
		An event listener to be called when the connection is opened.
	**/
	var onopen : haxe.Constraints.Function;
	
	/**
		An event listener to be called when an error occurs.
	**/
	var onerror : haxe.Constraints.Function;
	
	/**
		An event listener to be called when the connection is closed.
	**/
	var onclose : haxe.Constraints.Function;
	
	/**
		The extensions selected by the server.
	**/
	var extensions(default,null) : String;
	
	/**
		The sub-protocol selected by the server.
	**/
	var protocol(default,null) : String;
	
	/**
		An event listener to be called when a message is received from the server.
	**/
	var onmessage : haxe.Constraints.Function;
	
	/**
		The binary data type used by the connection.
	**/
	var binaryType : BinaryType;
	
	/** @throws DOMError */
	@:overload( function( url : String ) : Void {} )
	@:overload( function( url : String, protocols : String ) : Void {} )
	function new( url : String, protocols : Array<String> ) : Void;
	/** @throws DOMError */
	function close( ?code : Int, ?reason : String ) : Void;
	/** @throws DOMError */
	@:overload( function( data : String ) : Void {} )
	@:overload( function( data : Blob ) : Void {} )
	@:overload( function( data : js.lib.ArrayBuffer ) : Void {} )
	function send( data : js.lib.ArrayBufferView ) : Void;
}