module.exports = (sequelize,DataTypes )=>{
    const lesson = sequelize.define(
        'Lesson',
        {
            days: DataTypes.STRING,
            time: DataTypes.TIME,
            max_capacity: DataTypes.INTEGER,
            },
            {
                timestamps: false
            },   
    );
        lesson.associate = (models)=>{
            lesson.belongsTo(models.Activity, {
                 as: 'activity',
                 foreignKey: 'id_activity'
            })
            lesson.belongsTo(models.Branch, {
                as: 'branch',
                foreignKey: 'id_branch'
            }) 
            lesson.associate = (models) => {
                lesson.belongsToMany(models.User,{
                    as: 'users',
                    through: 'User_lesson',
                    foreignKey: 'lesson_id',
                    otherKey: 'user_id'
                })
            }   
        }
    
        return lesson
}