@RoomPictures = new FS.Collection("roomPictures",
	stores: [
		new FS.Store.GridFS("room_images", {

			transformWrite: (fileObj, readStream, writeStream)->
				if gm.isAvailable
					gm(readStream, fileObj.name()).autoOrient().stream().pipe(writeStream)
				else
					readStream.pipe(writeStream)
		}),
		new FS.Store.GridFS("room_thumbs", {

			transformWrite: (fileObj, readStream, writeStream)->
				if gm.isAvailable
					size = {width: 200, height: 200}
					gm(readStream, fileObj.name()).autoOrient().resize(size.width + "^>", size.height + "^>").gravity("Center").extent(size.width, size.height).stream().pipe(writeStream)
				else
					readStream.pipe(writeStream)
		})
	],
	filter: {
		allow: {
			contentTypes: ['image/*']
		}
	}
)
