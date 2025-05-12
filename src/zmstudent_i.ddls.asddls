@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.dataCategory: #HIERARCHY
@EndUserText.label: 'interface view for student'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
@OData.hierarchy.recursiveHierarchy:[{ entity.name: 'ZMSTUDENT_HR' }]
define root view entity ZMSTUDENT_I as select from zmstudent_t
association of many to one ZMSTUDENT_I as _Mentor on $projection.Mentor = _Mentor.Studentid
{
    key studentid as Studentid,
    firstname as Firstname,
    lastname as Lastname,
    class as Class,
    gender as Gender,
    mentor as Mentor,
    _Mentor
}
