FasdUAS 1.101.10   ��   ��    k             l      ��  ��    _ Y
  Very very simple script to show a message.
  
  For notifications, Growl is required.
     � 	 	 � 
     V e r y   v e r y   s i m p l e   s c r i p t   t o   s h o w   a   m e s s a g e . 
     
     F o r   n o t i f i c a t i o n s ,   G r o w l   i s   r e q u i r e d . 
   
  
 l     ��������  ��  ��        i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 argv  ��    k     �       r     	    n        I    �� ���� 0 joinlist joinList      o    ���� 0 argv     ��  m       �     ��  ��     f       o      ���� 0 msg        l  
 
��������  ��  ��       !   O   
 # " # " r    " $ % $ ?      & ' & l    (���� ( I   �� )��
�� .corecnte****       **** ) l    *���� * 6    + , + 2    ��
�� 
prcs , =    - . - 1    ��
�� 
bnid . m     / / � 0 0 0 c o m . G r o w l . G r o w l H e l p e r A p p��  ��  ��  ��  ��   ' m    ����   % o      ����  0 isgrowlrunning isGrowlRunning # m   
  1 1�                                                                                  sevs  alis    �  Macintosh HD               �I��H+   Q!System Events.app                                               6��)Q        ����  	                CoreServices    �I��      ��1     Q! Q   x  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   !  2 3 2 l  $ $��������  ��  ��   3  4 5 4 Z   $ b 6 7���� 6 o   $ %����  0 isgrowlrunning isGrowlRunning 7 O   ( ^ 8 9 8 k   0 ] : :  ; < ; l  0 0�� = >��   = 1 + Make a list of all the notification types     > � ? ? V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s   <  @ A @ l  0 0�� B C��   B ' ! that this script will ever send:    C � D D B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d : A  E F E r   0 5 G H G l 	 0 3 I���� I J   0 3 J J  K�� K m   0 1 L L � M M  N o t i f i c a t i o n��  ��  ��   H l      N���� N o      ���� ,0 allnotificationslist allNotificationsList��  ��   F  O P O l  6 6��������  ��  ��   P  Q R Q l  6 6�� S T��   S ( " Make a list of the notifications     T � U U D   M a k e   a   l i s t   o f   t h e   n o t i f i c a t i o n s   R  V W V l  6 6�� X Y��   X - ' that will be enabled by default.          Y � Z Z N   t h a t   w i l l   b e   e n a b l e d   b y   d e f a u l t .             W  [ \ [ l  6 6�� ] ^��   ] 9 3 Those not enabled by default can be enabled later     ^ � _ _ f   T h o s e   n o t   e n a b l e d   b y   d e f a u l t   c a n   b e   e n a b l e d   l a t e r   \  ` a ` l  6 6�� b c��   b 7 1 in the 'Applications' tab of the growl prefpane.    c � d d b   i n   t h e   ' A p p l i c a t i o n s '   t a b   o f   t h e   g r o w l   p r e f p a n e . a  e f e r   6 = g h g l 	 6 9 i���� i J   6 9 j j  k�� k m   6 7 l l � m m  N o t i f i c a t i o n��  ��  ��   h l      n���� n o      ���� 40 enablednotificationslist enabledNotificationsList��  ��   f  o p o l  > >��������  ��  ��   p  q r q l  > >�� s t��   s &   Register our script with growl.    t � u u @   R e g i s t e r   o u r   s c r i p t   w i t h   g r o w l . r  v w v l  > >�� x y��   x 7 1 You can optionally (as here) set a default icon     y � z z b   Y o u   c a n   o p t i o n a l l y   ( a s   h e r e )   s e t   a   d e f a u l t   i c o n   w  { | { l  > >�� } ~��   } ' ! for this script's notifications.    ~ �   B   f o r   t h i s   s c r i p t ' s   n o t i f i c a t i o n s . |  � � � I  > [���� �
�� .registernull��� ��� null��   � �� � �
�� 
appl � l 	 B E ����� � m   B E � � � � �  N o t i f i e r��  ��   � �� � �
�� 
anot � l 
 H I ����� � o   H I���� ,0 allnotificationslist allNotificationsList��  ��   � �� � �
�� 
dnot � l 
 L O ����� � o   L O���� 40 enablednotificationslist enabledNotificationsList��  ��   � �� ���
�� 
iapp � m   R U � � � � �  S c r i p t   E d i t o r��   �  � � � l  \ \�� � ���   � U Oicon of file "file:///~/Library/Scripts/UI%20Action%20Scripts/microphone-1.jpg"    � � � � � i c o n   o f   f i l e   " f i l e : / / / ~ / L i b r a r y / S c r i p t s / U I % 2 0 A c t i o n % 2 0 S c r i p t s / m i c r o p h o n e - 1 . j p g " �  ��� � l  \ \��������  ��  ��  ��   9 5   ( -�� ���
�� 
capp � m   * + � � � � � 0 c o m . G r o w l . G r o w l H e l p e r A p p
�� kfrmID  ��  ��   5  � � � l  c c��������  ��  ��   �  ��� � Z   c � � ����� � o   c d����  0 isgrowlrunning isGrowlRunning � O   g � � � � I  q ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 u x ����� � m   u x � � � � �  N o t i f i c a t i o n��  ��   � �� � �
�� 
titl � l 	 { ~ ����� � m   { ~ � � � � �  N o t i f i c a t i o n��  ��   � �� � �
�� 
desc � l 	 � � ����� � o   � ����� 0 msg  ��  ��   � �� ���
�� 
appl � m   � � � � � � �  N o t i f i e r��   � 5   g n�� ���
�� 
capp � m   i l � � � � � 0 c o m . G r o w l . G r o w l H e l p e r A p p
�� kfrmID  ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i    � � � I      �� ����� 0 joinlist joinList �  � � � o      ���� 0 alist aList �  ��� � o      ���� 0 	delimiter  ��  ��   � k      � �  � � � r      � � � m      � � � � �   � o      ���� 0 retval retVal �  � � � r    	 � � � n    � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr � o      ���� 0 prevdelimiter prevDelimiter �  � � � r   
  � � � o   
 ���� 0 	delimiter   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r     � � � c     � � � o    ���� 0 alist aList � m    ��
�� 
TEXT � o      ���� 0 retval retVal �  � � � r     � � � o    �� 0 prevdelimiter prevDelimiter � n      � � � 1    �~
�~ 
txdl � 1    �}
�} 
ascr �  ��| � L     � � o    �{�{ 0 retval retVal�|   �  � � � l     �z�y�x�z  �y  �x   �  � � � i    � � � I      �w ��v�w 0 splitstring splitString �  � � � o      �u�u 0 astring aString �  ��t � o      �s�s 0 	delimiter  �t  �v   � k     ' � �  � � � r      � � � J     �r�r   � o      �q�q 0 retval retVal �  � � � r    
 � � � n    � � � 1    �p
�p 
txdl � 1    �o
�o 
ascr � o      �n�n 0 prevdelimiter prevDelimiter �  � � � I   �m ��l
�m .ascrcmnt****      � **** � o    �k�k 0 	delimiter  �l   �  � � � r     � � � J       �j o    �i�i 0 	delimiter  �j   � n      1    �h
�h 
txdl 1    �g
�g 
ascr �  r     n    	 2    �f
�f 
citm	 o    �e�e 0 astring aString o      �d�d 0 retval retVal 

 r    $ o     �c�c 0 prevdelimiter prevDelimiter n      1   ! #�b
�b 
txdl 1     !�a
�a 
ascr �` L   % ' o   % &�_�_ 0 retval retVal�`   �  l     �^�]�\�^  �]  �\   �[ l     �Z�Y�X�Z  �Y  �X  �[       �W�V�U�T�S�R�Q�W   �P�O�N�M�L�K�J�I�H�G�F�E
�P .aevtoappnull  �   � ****�O 0 joinlist joinList�N 0 splitstring splitString�M 0 msg  �L  0 isgrowlrunning isGrowlRunning�K ,0 allnotificationslist allNotificationsList�J 40 enablednotificationslist enabledNotificationsList�I  �H  �G  �F  �E   �D �C�B�A
�D .aevtoappnull  �   � ****�C 0 argv  �B   �@�@ 0 argv   ! �?�> 1�=�< /�;�:�9 ��8 L�7 l�6�5 ��4�3�2 ��1�0 ��/ ��. ��- ��,�? 0 joinlist joinList�> 0 msg  
�= 
prcs  
�< 
bnid
�; .corecnte****       ****�:  0 isgrowlrunning isGrowlRunning
�9 
capp
�8 kfrmID  �7 ,0 allnotificationslist allNotificationsList�6 40 enablednotificationslist enabledNotificationsList
�5 
appl
�4 
anot
�3 
dnot
�2 
iapp�1 
�0 .registernull��� ��� null
�/ 
name
�. 
titl
�- 
desc
�, .notifygrnull��� ��� null�A �)��l+ E�O� *�-�[�,\Z�81j jE�UO� ;)���0 /�kvE�O�kvE` O*a a a �a _ a a a  OPUY hO� -)�a �0 *a a a a a �a a a   UY h �+ ��*�) �(�+ 0 joinlist joinList�* �'!�' !  �&�%�& 0 alist aList�% 0 	delimiter  �)   �$�#�"�!�$ 0 alist aList�# 0 	delimiter  �" 0 retval retVal�! 0 prevdelimiter prevDelimiter   �� ��
�  
ascr
� 
txdl
� 
TEXT�( �E�O��,E�O���,FO��&E�O���,FO� � ���"#�� 0 splitstring splitString� �$� $  ��� 0 astring aString� 0 	delimiter  �  " ����� 0 astring aString� 0 	delimiter  � 0 retval retVal� 0 prevdelimiter prevDelimiter# ����
� 
ascr
� 
txdl
� .ascrcmnt****      � ****
� 
citm� (jvE�O��,E�O�j O�kv��,FO��-E�O���,FO� �%% , C h o o s i n g   s i e r r a   P D F K i t
�V boovtrue �&� &   L �'� '   l�U  �T  �S  �R  �Q  ascr  ��ޭ