const fs = require('fs');
const path = require('path');
const {validationResult} = require ('express-validator')
// DataBase Products
const productsFilePath = path.join(__dirname, '../data/products.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));

// DataBase Branches
const branchesFilePath = path.join(__dirname, '../data/branches.json');
var branches = JSON.parse(fs.readFileSync(branchesFilePath, 'utf-8'));
branches = branches.filter(branch => branch.id < 7 );


const toThousand = n => n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");

const mainController = {
	root: (req, res) => {
		res.render('index', {products, branches})
	},
	search: (req, res) => {
		
	},
	processLogin: (req,res) =>{
		let errors = validationResult(req);
		if(!errors.isEmpty()){
		res.render('users/login', {errors, branches})
	}
	}
};

module.exports = mainController;
