import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:sephora/register/register.dart';

class TermAndCondition extends StatelessWidget {
  const TermAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F7FD),
        body: Column(
          children: [
            const RegisterAppbar(title: 'Syarat & Ketentuan'),
            Expanded(
              child: Card(
                margin: const EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: RegisterHeadline(
                        icon: Icons.check_box_outlined,
                        headline: 'Persetujuan',
                        desc: 'Baca dan pahami syarat & ketentuan pada '
                            'di bawah ini',
                      ),
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              ExpandablePanel(
                                header: const Text(
                                  'Loraem ipsum',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                theme: const ExpandableThemeData(
                                  alignment: Alignment.center,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                ),
                                collapsed: const Text(
                                  'Lorem ipsum dolor sit amet, '
                                  'consectetur adipiscing elit. '
                                  'In nibh massa arcu elementum sed feugiat.',
                                  softWrap: true,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF727FA3),
                                  ),
                                ),
                                expanded: const Text(
                                  'Lorem ipsum dolor sit amet,'
                                  ' consectetur adipiscing elit. '
                                  'In nibh massa arcu elementum sed'
                                  ' feugiat. Purus fringilla iaculis'
                                  ' turpis mattis in feugiat'
                                  ' ullamcorper turpis in. '
                                  'Pellentesque purus, blandit erat '
                                  'proin laoreet quis. Amet enim, '
                                  'hendrerit pellentesque nunc '
                                  'posuere. Mauris ac purus eu '
                                  'congue. Tincidunt risus at '
                                  'elementum orci nisl vivamus sed.'
                                  ' Duis facilisis massa morbi nisl. '
                                  'Facilisis volutpat nulla aliquet '
                                  'eu id bibendum feugiat vulputate '
                                  'diam. Sed ultricies phasellus '
                                  'lectus non massa facilisis massa.',
                                  softWrap: true,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF727FA3),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              ExpandablePanel(
                                header: const Text(
                                  'Loraem ipsum',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                theme: const ExpandableThemeData(
                                  alignment: Alignment.center,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                ),
                                collapsed: const Text(
                                  'Lorem ipsum dolor sit amet, '
                                  'consectetur adipiscing elit.',
                                  softWrap: true,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF727FA3),
                                  ),
                                ),
                                expanded: const Text(
                                  'Lorem ipsum dolor sit amet,'
                                  ' consectetur adipiscing elit. '
                                  'In nibh massa arcu elementum sed'
                                  ' feugiat. Purus fringilla iaculis'
                                  ' turpis mattis in feugiat'
                                  ' ullamcorper turpis in. '
                                  'Pellentesque purus, blandit erat '
                                  'proin laoreet quis. Amet enim, '
                                  'hendrerit pellentesque nunc '
                                  'posuere. Mauris ac purus eu '
                                  'congue. Tincidunt risus at '
                                  'elementum orci nisl vivamus sed.'
                                  ' Duis facilisis massa morbi nisl. '
                                  'Facilisis volutpat nulla aliquet '
                                  'eu id bibendum feugiat vulputate '
                                  'diam. Sed ultricies phasellus '
                                  'lectus non massa facilisis massa.',
                                  softWrap: true,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF727FA3),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              ExpandablePanel(
                                header: const Text(
                                  'Loraem ipsum',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                theme: const ExpandableThemeData(
                                  alignment: Alignment.center,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                ),
                                collapsed: const Text(
                                  'Lorem ipsum dolor sit amet, '
                                  'consectetur adipiscing elit.',
                                  softWrap: true,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF727FA3),
                                  ),
                                ),
                                expanded: const Text(
                                  'Lorem ipsum dolor sit amet,'
                                  ' consectetur adipiscing elit. '
                                  'In nibh massa arcu elementum sed'
                                  ' feugiat. Purus fringilla iaculis'
                                  ' turpis mattis in feugiat'
                                  ' ullamcorper turpis in. '
                                  'Pellentesque purus, blandit erat '
                                  'proin laoreet quis. Amet enim, '
                                  'hendrerit pellentesque nunc '
                                  'posuere. Mauris ac purus eu '
                                  'congue. Tincidunt risus at '
                                  'elementum orci nisl vivamus sed.'
                                  ' Duis facilisis massa morbi nisl. '
                                  'Facilisis volutpat nulla aliquet '
                                  'eu id bibendum feugiat vulputate '
                                  'diam. Sed ultricies phasellus '
                                  'lectus non massa facilisis massa.',
                                  softWrap: true,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF727FA3),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              ExpandablePanel(
                                header: const Text(
                                  'Loraem ipsum',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                theme: const ExpandableThemeData(
                                  alignment: Alignment.center,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                ),
                                collapsed: const Text(
                                  'Lorem ipsum dolor sit amet, '
                                  'consectetur adipiscing elit.'
                                  'In nibh massa arcu elementum sed'
                                  ' feugiat. Purus fringilla iaculis'
                                  ' turpis mattis in feugiat'
                                  ' ullamcorper turpis in.',
                                  softWrap: true,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF727FA3),
                                  ),
                                ),
                                expanded: const Text(
                                  'Lorem ipsum dolor sit amet,'
                                  ' consectetur adipiscing elit. '
                                  'In nibh massa arcu elementum sed'
                                  ' feugiat. Purus fringilla iaculis'
                                  ' turpis mattis in feugiat'
                                  ' ullamcorper turpis in. '
                                  'Pellentesque purus, blandit erat '
                                  'proin laoreet quis. Amet enim, '
                                  'hendrerit pellentesque nunc '
                                  'posuere. Mauris ac purus eu '
                                  'congue. Tincidunt risus at '
                                  'elementum orci nisl vivamus sed.'
                                  ' Duis facilisis massa morbi nisl. '
                                  'Facilisis volutpat nulla aliquet '
                                  'eu id bibendum feugiat vulputate '
                                  'diam. Sed ultricies phasellus '
                                  'lectus non massa facilisis massa.',
                                  softWrap: true,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF727FA3),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            value: true,
                            onChanged: (v) {},
                          ),
                          const Expanded(
                            child: Text(
                              'Saya telah membaca, memahami, '
                              'dan menyetujui mengenai syarat & ketentuan',
                              style: TextStyle(
                                color: Color(0xFF2E3D50),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => const UnsuccessAlert(
                            text: 'Akun Anda gagal terdaftar di akun'
                                ' Sephora Banking. Silakan coba lagi.',
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size(100, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        side: const BorderSide(
                          color: Colors.blue,
                          width: 1.5,
                        ),
                      ),
                      child: const Text('Tidak'),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => const SuccessAlert(
                            text: 'Selamat! Akun Anda telah berhasil'
                                ' terdaftar di akun Sephora Banking. '
                                'Silakan menikmati semua fitur Sephora '
                                'Banking.',
                          ),
                        );
                      },
                      child: const Text('Setuju'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
