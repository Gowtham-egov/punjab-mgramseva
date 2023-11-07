export const newConfig = [
  {
    head: "Personal Details",
    body: [
      {
        type: "component",
        component: "SelectEmployeeName",
        key: "SelectEmployeeName",
        withoutLabel: true,
      },
      {
        type: "component",
        component: "SelectEmployeePhoneNumber",
        key: "SelectEmployeePhoneNumber",
        withoutLabel: true,
      },
      {
        type: "component",
        component: "SelectEmployeeGender",
        key: "SelectEmployeeGender",
        withoutLabel: true,
      },
      {
        type: "component",
        component: "SelectEmployeeEmailId",
        key: "SelectEmployeeEmailId",
        withoutLabel: true,
      },
      {
        type: "component",
        component: "SelectEmployeeCorrespondenceAddress",
        key: "SelectEmployeeCorrespondenceAddress",
        withoutLabel: true,
      },
    ],
  },
  {
    head: "HR_NEW_EMPLOYEE_FORM_HEADER",
    body: [
      {
        type: "component",
        component: "SelectDateofEmployment",
        key: "SelectDateofEmployment",
        withoutLabel: true,
      },

      {
        type: "component",
        component: "HRBanner",
        key: "Banner1",
        withoutLabel: true,
        texts: {
          headerCaption: "Info",
          header: "HR_EMP_ID_MESSAGE",
        },
      },
    ],
  },
  {
    head: "HR_JURISDICTION_DETAILS_HEADER",
    body: [
      {
        type: "component",
        isMandatory: true,
        component: "Jurisdictions",
        key: "Jurisdictions",
        withoutLabel: true,
      },
    ],
  },
];