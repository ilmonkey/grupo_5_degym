const DB = require ('../database/models');
const OP = DB.Sequelize.Op;

const controller = {
	// Admin Tools - Shows admin tools
	controlPanel: (req, res) => {
		res.render("adminPanel")
	},
 
	showBranches: async (req, res) => {
		try {
			const branches = await DB.Branch.findAll()
			res.send(branches)
		} catch (error) {
			res.send(error)
		}
	},

    storeBranch: async (req, res) => {
		try {
		    const newBranch = await DB.Branch.create(req.body)
		    res.send(newBranch)
	    } catch (error) {
		    res.send(error)
	    }
	},
	destroyBranch: async (req, res) => {
		 await DB.Branch.destroy({
				where:{
					id: req.params.id
				}
			});
			res.json({succes: 'Se elimino piola la branch'})
	},
	
	showActivities: async (req, res) => {
		try {
			const activities = await DB.Activity.findAll()
			// res.send('Llegue')
			res.render('activities', {activities})
		} catch (error) {
			res.send(error)
		}
	},

    storeActivity: async (req, res) => {
		try {
			req.body.img = req.files[0].filename
		    const newActivity = await DB.Activity.create(req.body)
		    res.send(newActivity)
	    } catch (error) {
		    res.send(error)
	    }
	},
	destroyActivity: async (req, res) => {
		 await DB.Activity.destroy({
				where:{
					id: req.params.id
				}
			});
			res.json({succes: 'Se elimino piola la activity'})
	},

	showLessons: async (req, res) => {
		try {
			let lessons = await DB.Lesson.findAll()
			res.send(lessons)
		} catch (error) {
			res.send(error)
		}
	},

    storeLesson: async (req, res) => {
		try {
		    const newLesson = await DB.Lesson.create(req.body)
		    res.send(newLesson)
	    } catch (error) {
		    res.send(error)
	    }
	},
	destroyLesson: async (req, res) => {
		 await DB.Activity.destroy({
				where:{
					id: req.params.id
				}
			});
			res.json({succes: 'Se elimino piola la activity'})
	},

}

module.exports = controller;
