# 
# Do NOT Edit the Auto-generated Part!
# Generated by: spectacle version 0.27
# 

Name:       mpris-scrobbler-signon

# >> macros
# << macros

%{!?qtc_qmake:%define qtc_qmake %qmake}
%{!?qtc_qmake5:%define qtc_qmake5 %qmake5}
%{!?qtc_make:%define qtc_make make}
%{?qtc_builddir:%define _builddir %qtc_builddir}
Summary:    MPRIS Scrobbler Signon
Version:    0.1
Release:    1
Group:      Qt/Qt
License:    MIT
URL:        http://github.com/mariusor/mpris-scrobbler
Source0:    %{name}-%{version}.tar.bz2
Source100:  mpris-scrobbler-signon.yaml
Requires:   sailfishsilica-qt5 >= 0.10.9
Requires:   jolla-settings-accounts >= 0.2.27
BuildRequires:  pkgconfig(sailfishapp) >= 1.0.2
BuildRequires:  pkgconfig(Qt5Core)
BuildRequires:  pkgconfig(Qt5Qml)
BuildRequires:  pkgconfig(Qt5Quick)

%description
Signon helper for the mpris-scrobbler service.


%prep
%setup -q -n %{name}-%{version}

# >> setup
# << setup

%build
# >> build pre

mkdir -p %{buildroot}%{_datadir}/accounts
mkdir -p %{buildroot}%{_datadir}/accounts/providers
mkdir -p %{buildroot}%{_datadir}/accounts/services
mkdir -p %{buildroot}%{_datadir}/accounts/ui

install -m 644 icons/* %{buildroot}%{_datadir}/icons/hicolor/
install -m 644 providers/*.provider %{buildroot}%{_datadir}/accounts/providers
install -m 644 services/*.service %{buildroot}%{_datadir}/accounts/services
install -m 644 ui/*.qml %{buildroot}%{_datadir}/accounts/ui
# << build pre

%qtc_qmake5 

%qtc_make %{?_smp_mflags}

# >> build post
# << build post

%install
rm -rf %{buildroot}
# >> install pre
# << install pre
%qmake5_install

# >> install post
# << install post

%files
%defattr(-,root,root,-)
%{_datadir}/icons/hicolor/*/apps/*
%{_datadir}/accounts/providers/*.provider
%{_datadir}/accounts/services/*.service
%{_datadir}/accounts/ui/*.qml
# >> files
# << files
