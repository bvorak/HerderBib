unit student;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TStudent = class
  private
    id: int64;
    last_name: string;
    first_name: string;
    class_name: string;
    birth: TDate;
  public
    // Returns the student id
    // result: id
    function getId(): int64;

    // Sets a new student id
    // parameter: newId
    // result: TRUE on success, so if newId is not NULL
    function setId(newId: int64): boolean;

    // Returns the student's last name
    // result: last_name
    function getLastName(): string;

    // Sets a new student's last name
    // parameter: newLastName
    // result: TRUE on success, so if newLastName has 0..255 characters and is not NULL
    function setLastName(newLastName: string): boolean;

    // Returns the student's first name
    // result: first_name
    function getFirstName(): string;

    // Sets a new student's first name
    // parameter: newFirstName
    // result: TRUE on success, so if newFirstName has 0..255 characters and is not NULL
    function setFirstName(newFirstName: string): boolean;

    // Returns the student's class name
    // result: class_name
    function getClassName(): string;

    // Sets a new student's class name
    // parameter: newClassName
    // result: TRUE on success, so if newClassName has 0..10 characters and is not NULL
    function setClassName(newClassName: string): boolean;

    // Returns the student's date of birth
    // result: date of birth
    function getBirth(): TDate;

    // Sets a new student's date of birth
    // parameter: birth
    // result: TRUE on success, so if newBirth >= 0 and not NULL
    function setBirth(newBirth: TDate): boolean;

    constructor Create;
  end;

implementation

function TStudent.getId(): int64;
begin
  Result := self.id;
end;

function TStudent.setId(newId: int64): boolean;
begin
  Result := False;
  if (newId <> NULL) then
  begin
    self.id := newId;
    Result := True;
  end;
end;

function TStudent.getLastName(): string;
begin
  Result := self.last_name;
end;

function TStudent.setLastName(newLastName: string): boolean;
begin
  Result := False;
  if (Length(newLastName) <= 255) and (newLastName <> NULL) then
  begin
    self.last_name := newLastName;
    Result := True;
  end;
end;

function TStudent.getFirstName(): string;
begin
  Result := self.first_name;
end;

function TStudent.setFirstName(newFirstName: string): boolean;
begin
  Result := False;
  if (newFirstName <> NULL) and (Length(newFirstName) <= 255) then
  begin
    self.first_name := newFirstName;
    Result := True;
  end;
end;

function TStudent.getClassName(): string;
begin
  Result := self.class_name;
end;

function TStudent.setClassName(newClassName: string): boolean;
begin
  Result := False;
  if (newClassName <> NULL) and (Length(newClassName) <= 10) then
  begin
    self.class_name := newClassName;
    Result := True;
  end;
end;

function TStudent.getBirth(): TDate;
begin
  Result := self.birth;
end;

function TStudent.setBirth(newBirth: TDate): boolean;
begin
  Result := False;
  if (newBirth <> NuLL) and (newBirth >= 0) then
  begin
    self.birth := newBirth;
    Result := True;
  end;
end;

constructor TStudent.Create;
begin
  self.id := -1;
  self.last_name := '';
  self.first_name := '';
  self.class_name := '';
  self.birth := -1;
end;

end.

