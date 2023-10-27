import React from "react";
import { Table } from "@egovernments/digit-ui-react-components";

const ApplicationTable = ({
  t,
  columns,
  data,
  getCellProps,
  onNextPage,
  onPrevPage,
  currentPage,
  totalRecords,
  pageSizeLimit,
  onPageSizeChange,
  onSort,
  sortParams,
}) => (
  <Table
    t={t}
    data={data}
    columns={columns}
    getCellProps={getCellProps}
    onNextPage={onNextPage}
    onPrevPage={onPrevPage}
    currentPage={currentPage}
    totalRecords={totalRecords}
    onPageSizeChange={onPageSizeChange}
    pageSizeLimit={pageSizeLimit}
    onSort={onSort}
    sortParams={sortParams}
  />
);

export default ApplicationTable;
