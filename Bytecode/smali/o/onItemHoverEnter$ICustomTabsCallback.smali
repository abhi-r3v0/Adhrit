.class public final Lo/onItemHoverEnter$ICustomTabsCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onItemHoverEnter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field public static final abc_fade_in:I = 0x7f010000

.field public static final abc_fade_out:I = 0x7f010001

.field public static final abc_grow_fade_in_from_bottom:I = 0x7f010002

.field public static final abc_popup_enter:I = 0x7f010003

.field public static final abc_popup_exit:I = 0x7f010004

.field public static final abc_shrink_fade_out_from_bottom:I = 0x7f010005

.field public static final abc_slide_in_bottom:I = 0x7f010006

.field public static final abc_slide_in_top:I = 0x7f010007

.field public static final abc_slide_out_bottom:I = 0x7f010008

.field public static final abc_slide_out_top:I = 0x7f010009

.field public static final abc_tooltip_enter:I = 0x7f01000a

.field public static final abc_tooltip_exit:I = 0x7f01000b

.field public static final btn_checkbox_to_checked_box_inner_merged_animation:I = 0x7f01000c

.field public static final btn_checkbox_to_checked_box_outer_merged_animation:I = 0x7f01000d

.field public static final btn_checkbox_to_checked_icon_null_animation:I = 0x7f01000e

.field public static final btn_checkbox_to_unchecked_box_inner_merged_animation:I = 0x7f01000f

.field public static final btn_checkbox_to_unchecked_check_path_merged_animation:I = 0x7f010010

.field public static final btn_checkbox_to_unchecked_icon_null_animation:I = 0x7f010011

.field public static final btn_radio_to_off_mtrl_dot_group_animation:I = 0x7f010012

.field public static final btn_radio_to_off_mtrl_ring_outer_animation:I = 0x7f010013

.field public static final btn_radio_to_off_mtrl_ring_outer_path_animation:I = 0x7f010014

.field public static final btn_radio_to_on_mtrl_dot_group_animation:I = 0x7f010015

.field public static final btn_radio_to_on_mtrl_ring_outer_animation:I = 0x7f010016

.field public static final btn_radio_to_on_mtrl_ring_outer_path_animation:I = 0x7f010017

.field public static final check_animation:I = 0x7f010018

.field public static final checkout_fadeout:I = 0x7f010019

.field public static final design_bottom_sheet_slide_in:I = 0x7f01001d

.field public static final design_bottom_sheet_slide_out:I = 0x7f01001e

.field public static final design_snackbar_in:I = 0x7f01001f

.field public static final design_snackbar_out:I = 0x7f010020

.field public static final fragment_close_enter:I = 0x7f010027

.field public static final fragment_close_exit:I = 0x7f010028

.field public static final fragment_fade_enter:I = 0x7f01002d

.field public static final fragment_fade_exit:I = 0x7f01002e

.field public static final fragment_fast_out_extra_slow_in:I = 0x7f01002f

.field public static final fragment_open_enter:I = 0x7f010030

.field public static final fragment_open_exit:I = 0x7f010031

.field public static final mtrl_bottom_sheet_slide_in:I = 0x7f01003a

.field public static final mtrl_bottom_sheet_slide_out:I = 0x7f01003b

.field public static final mtrl_card_lowers_interpolator:I = 0x7f01003c

.field public static final npci_slide_in_top:I = 0x7f01003e

.field public static final npci_slide_out_top:I = 0x7f01003f

.field public static final pay_vibrate_animation:I = 0x7f010040

.field public static final slide_in_up:I = 0x7f010047

.field public static final slide_out_down:I = 0x7f010048


# instance fields
.field public ICustomTabsCallback:[Lo/onItemHoverEnter;


# direct methods
.method public constructor <init>()V
    .locals 15

    move-object v0, p0

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [Lo/onItemHoverEnter;

    .line 1010
    new-instance v2, Lo/onItemHoverEnter;

    invoke-direct {v2}, Lo/onItemHoverEnter;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lo/onItemHoverEnter;

    invoke-direct {v2}, Lo/onItemHoverEnter;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lo/onItemHoverEnter;

    invoke-direct {v2}, Lo/onItemHoverEnter;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lo/onItemHoverEnter;

    invoke-direct {v2}, Lo/onItemHoverEnter;-><init>()V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Lo/onItemHoverEnter;

    invoke-direct {v2}, Lo/onItemHoverEnter;-><init>()V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Lo/onItemHoverEnter;

    invoke-direct {v2}, Lo/onItemHoverEnter;-><init>()V

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-instance v2, Lo/onItemHoverEnter;

    invoke-direct {v2}, Lo/onItemHoverEnter;-><init>()V

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-instance v2, Lo/onItemHoverEnter;

    invoke-direct {v2}, Lo/onItemHoverEnter;-><init>()V

    const/4 v10, 0x7

    aput-object v2, v1, v10

    iput-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    .line 1021
    aget-object v1, v1, v3

    const/16 v2, 0x1e

    new-array v11, v2, [D

    fill-array-data v11, :array_0

    iput-object v11, v1, Lo/onItemHoverEnter;->extraCallback:[D

    .line 1028
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v3

    new-array v11, v5, [D

    fill-array-data v11, :array_1

    iput-object v11, v1, Lo/onItemHoverEnter;->onNavigationEvent:[D

    .line 1029
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v3

    const-wide v11, 0x3fb999999999999aL    # 0.1

    iput-wide v11, v1, Lo/onItemHoverEnter;->ICustomTabsCallback:D

    .line 1030
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v3

    iput-wide v11, v1, Lo/onItemHoverEnter;->onMessageChannelReady:D

    .line 1032
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v3

    const/16 v11, 0x100

    iput v11, v1, Lo/onItemHoverEnter;->onPostMessage:I

    .line 1033
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v3

    iput v11, v1, Lo/onItemHoverEnter;->onTransact:I

    .line 1034
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v3

    const/16 v11, 0x1588

    iput v11, v1, Lo/onItemHoverEnter;->ICustomTabsCallback$Stub:I

    .line 1035
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v3

    const/16 v3, 0x89d

    iput v3, v1, Lo/onItemHoverEnter;->asBinder:I

    .line 1037
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    new-array v12, v2, [D

    fill-array-data v12, :array_2

    iput-object v12, v1, Lo/onItemHoverEnter;->extraCallback:[D

    .line 1044
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    new-array v12, v5, [D

    fill-array-data v12, :array_3

    iput-object v12, v1, Lo/onItemHoverEnter;->onNavigationEvent:[D

    .line 1045
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    const-wide v12, 0x3f9999999999999aL    # 0.025

    iput-wide v12, v1, Lo/onItemHoverEnter;->ICustomTabsCallback:D

    .line 1046
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput-wide v12, v1, Lo/onItemHoverEnter;->onMessageChannelReady:D

    .line 1048
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    const/16 v14, 0x40

    iput v14, v1, Lo/onItemHoverEnter;->onPostMessage:I

    .line 1049
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput v14, v1, Lo/onItemHoverEnter;->onTransact:I

    .line 1050
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput v11, v1, Lo/onItemHoverEnter;->ICustomTabsCallback$Stub:I

    .line 1051
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput v3, v1, Lo/onItemHoverEnter;->asBinder:I

    .line 1053
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v5

    new-array v4, v2, [D

    fill-array-data v4, :array_4

    iput-object v4, v1, Lo/onItemHoverEnter;->extraCallback:[D

    .line 1066
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v5

    new-array v4, v5, [D

    fill-array-data v4, :array_5

    iput-object v4, v1, Lo/onItemHoverEnter;->onNavigationEvent:[D

    .line 1067
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v5

    iput-wide v12, v1, Lo/onItemHoverEnter;->ICustomTabsCallback:D

    .line 1068
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v5

    iput-wide v12, v1, Lo/onItemHoverEnter;->onMessageChannelReady:D

    .line 1070
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v5

    iput v14, v1, Lo/onItemHoverEnter;->onPostMessage:I

    .line 1071
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v5

    iput v14, v1, Lo/onItemHoverEnter;->onTransact:I

    .line 1072
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v5

    iput v3, v1, Lo/onItemHoverEnter;->ICustomTabsCallback$Stub:I

    .line 1073
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v5

    iput v3, v1, Lo/onItemHoverEnter;->asBinder:I

    .line 1075
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v10

    new-array v4, v2, [D

    fill-array-data v4, :array_6

    iput-object v4, v1, Lo/onItemHoverEnter;->extraCallback:[D

    .line 1082
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v10

    new-array v4, v5, [D

    fill-array-data v4, :array_7

    iput-object v4, v1, Lo/onItemHoverEnter;->onNavigationEvent:[D

    .line 1083
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v10

    const-wide v7, 0x3fa999999999999aL    # 0.05

    iput-wide v7, v1, Lo/onItemHoverEnter;->ICustomTabsCallback:D

    .line 1084
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v10

    iput-wide v7, v1, Lo/onItemHoverEnter;->onMessageChannelReady:D

    .line 1086
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v10

    iput v14, v1, Lo/onItemHoverEnter;->onPostMessage:I

    .line 1087
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v10

    iput v14, v1, Lo/onItemHoverEnter;->onTransact:I

    .line 1088
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v10

    iput v3, v1, Lo/onItemHoverEnter;->ICustomTabsCallback$Stub:I

    .line 1089
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v10

    iput v3, v1, Lo/onItemHoverEnter;->asBinder:I

    .line 1093
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v6

    new-array v10, v2, [D

    fill-array-data v10, :array_8

    iput-object v10, v1, Lo/onItemHoverEnter;->extraCallback:[D

    .line 1102
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v6

    new-array v10, v5, [D

    fill-array-data v10, :array_9

    iput-object v10, v1, Lo/onItemHoverEnter;->onNavigationEvent:[D

    .line 1103
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v6

    iput-wide v7, v1, Lo/onItemHoverEnter;->ICustomTabsCallback:D

    .line 1104
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v6

    iput-wide v7, v1, Lo/onItemHoverEnter;->onMessageChannelReady:D

    .line 1106
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v6

    iput v14, v1, Lo/onItemHoverEnter;->onPostMessage:I

    .line 1107
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v6

    iput v14, v1, Lo/onItemHoverEnter;->onTransact:I

    .line 1108
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v6

    iput v3, v1, Lo/onItemHoverEnter;->ICustomTabsCallback$Stub:I

    .line 1109
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v6

    iput v3, v1, Lo/onItemHoverEnter;->asBinder:I

    .line 1111
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v9

    new-array v6, v2, [D

    fill-array-data v6, :array_a

    iput-object v6, v1, Lo/onItemHoverEnter;->extraCallback:[D

    .line 1118
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v9

    new-array v6, v5, [D

    fill-array-data v6, :array_b

    iput-object v6, v1, Lo/onItemHoverEnter;->onNavigationEvent:[D

    .line 1119
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v9

    iput-wide v12, v1, Lo/onItemHoverEnter;->ICustomTabsCallback:D

    .line 1120
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v9

    iput-wide v12, v1, Lo/onItemHoverEnter;->onMessageChannelReady:D

    .line 1122
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v9

    const/16 v6, 0x80

    iput v6, v1, Lo/onItemHoverEnter;->onPostMessage:I

    .line 1123
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v9

    iput v6, v1, Lo/onItemHoverEnter;->onTransact:I

    .line 1124
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v9

    iput v11, v1, Lo/onItemHoverEnter;->ICustomTabsCallback$Stub:I

    .line 1125
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v9

    iput v3, v1, Lo/onItemHoverEnter;->asBinder:I

    .line 1128
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    const/4 v4, 0x4

    aget-object v1, v1, v4

    new-array v9, v2, [D

    fill-array-data v9, :array_c

    iput-object v9, v1, Lo/onItemHoverEnter;->extraCallback:[D

    .line 1135
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    new-array v9, v5, [D

    fill-array-data v9, :array_d

    iput-object v9, v1, Lo/onItemHoverEnter;->onNavigationEvent:[D

    .line 1136
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput-wide v12, v1, Lo/onItemHoverEnter;->ICustomTabsCallback:D

    .line 1137
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput-wide v12, v1, Lo/onItemHoverEnter;->onMessageChannelReady:D

    .line 1139
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput v14, v1, Lo/onItemHoverEnter;->onPostMessage:I

    .line 1140
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput v14, v1, Lo/onItemHoverEnter;->onTransact:I

    .line 1141
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput v3, v1, Lo/onItemHoverEnter;->ICustomTabsCallback$Stub:I

    .line 1142
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput v3, v1, Lo/onItemHoverEnter;->asBinder:I

    .line 1145
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    const/4 v4, 0x5

    aget-object v1, v1, v4

    new-array v2, v2, [D

    fill-array-data v2, :array_e

    iput-object v2, v1, Lo/onItemHoverEnter;->extraCallback:[D

    .line 1158
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    new-array v2, v5, [D

    fill-array-data v2, :array_f

    iput-object v2, v1, Lo/onItemHoverEnter;->onNavigationEvent:[D

    .line 1159
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput-wide v7, v1, Lo/onItemHoverEnter;->ICustomTabsCallback:D

    .line 1160
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput-wide v7, v1, Lo/onItemHoverEnter;->onMessageChannelReady:D

    .line 1162
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput v6, v1, Lo/onItemHoverEnter;->onPostMessage:I

    .line 1163
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput v6, v1, Lo/onItemHoverEnter;->onTransact:I

    .line 1164
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput v11, v1, Lo/onItemHoverEnter;->ICustomTabsCallback$Stub:I

    .line 1165
    iget-object v1, v0, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    aget-object v1, v1, v4

    iput v3, v1, Lo/onItemHoverEnter;->asBinder:I

    return-void

    :array_0
    .array-data 8
        0x4085887ae147ae14L    # 689.06
        0x409588851eb851ecL    # 1378.13
        0x40a0266147ae147bL    # 2067.19
        0x40a5888000000000L    # 2756.25
        0x40aaea9eb851eb85L    # 3445.31
        0x40b0266147ae147bL    # 4134.38
        0x40b2d770a3d70a3dL    # 4823.44
        0x40b5888000000000L    # 5512.5
        0x40b8398f5c28f5c3L    # 6201.56
        0x40baeaa147ae147bL    # 6890.63
        0x40bd9bb0a3d70a3dL    # 7579.69
        0x40c0266000000000L    # 8268.75
        0x40c17ee7ae147ae1L    # 8957.81
        0x40c2d770a3d70a3dL    # 9646.88
        0x40c42ff851eb851fL    # 10335.94
        0x40c5888000000000L    # 11025.0
        0x40c6e107ae147ae1L    # 11714.06
        0x40c83990a3d70a3dL    # 12403.13
        0x40c9921851eb851fL    # 13092.19
        0x40caeaa000000000L    # 13781.25
        0x40cc4327ae147ae1L    # 14470.31
        0x40cd9bb0a3d70a3dL    # 15159.38
        0x40cef43851eb851fL    # 15848.44
        0x40d0266000000000L    # 16537.5
        0x40d0d2a3d70a3d71L    # 17226.56
        0x40d17ee851eb851fL    # 17915.63
        0x40d22b2c28f5c28fL    # 18604.69
        0x40d2d77000000000L    # 19293.75
        0x40d383b3d70a3d71L    # 19982.81
        0x40d42ff851eb851fL    # 20671.88
    .end array-data

    :array_1
    .array-data 8
        0x4085887ae147ae14L    # 689.06
        0x409588851eb851ecL    # 1378.13
    .end array-data

    :array_2
    .array-data 8
        0x40c7738000000000L    # 12007.0
        0x40c7a68000000000L    # 12109.0
        0x40c7d98000000000L    # 12211.0
        0x40c8118000000000L    # 12323.0
        0x40c8488000000000L    # 12433.0
        0x40c87d8000000000L    # 12539.0
        0x40c8b08000000000L    # 12641.0
        0x40c8e38000000000L    # 12743.0
        0x40c91a8000000000L    # 12853.0
        0x40c94f8000000000L    # 12959.0
        0x40c9838000000000L    # 13063.0
        0x40c9b98000000000L    # 13171.0
        0x40c9f58000000000L    # 13291.0
        0x40ca2a8000000000L    # 13397.0
        0x40ca5d8000000000L    # 13499.0
        0x40ca968000000000L    # 13613.0
        0x40cacc8000000000L    # 13721.0
        0x40cb028000000000L    # 13829.0
        0x40cb358000000000L    # 13931.0
        0x40cb688000000000L    # 14033.0
        0x40cb9f8000000000L    # 14143.0
        0x40cbd48000000000L    # 14249.0
        0x40cc108000000000L    # 14369.0
        0x40cc478000000000L    # 14479.0
        0x40cc7f8000000000L    # 14591.0
        0x40ccb58000000000L    # 14699.0
        0x40ccee8000000000L    # 14813.0
        0x40cd258000000000L    # 14923.0
        0x40cd5b8000000000L    # 15031.0
        0x40cd908000000000L    # 15137.0
    .end array-data

    :array_3
    .array-data 8
        0x40c38b8000000000L    # 10007.0
        0x40c5278000000000L    # 10831.0
    .end array-data

    :array_4
    .array-data 8
        0x40c9648000000000L    # 13001.0
        0x40c9978000000000L    # 13103.0
        0x40c9d08000000000L    # 13217.0
        0x40ca078000000000L    # 13327.0
        0x40ca408000000000L    # 13441.0
        0x40ca788000000000L    # 13553.0
        0x40cab28000000000L    # 13669.0
        0x40caea8000000000L    # 13781.0
        0x40cb1d8000000000L    # 13883.0
        0x40cb568000000000L    # 13997.0
        0x40cb8d8000000000L    # 14107.0
        0x40cbf98000000000L    # 14323.0
        0x40cc2f8000000000L    # 14431.0
        0x40cc628000000000L    # 14533.0
        0x40cc978000000000L    # 14639.0
        0x40ccca8000000000L    # 14741.0
        0x40cd318000000000L    # 14947.0
        0x40cd668000000000L    # 15053.0
        0x40cd9c8000000000L    # 15161.0
        0x40cdcf8000000000L    # 15263.0
        0x40ce068000000000L    # 15373.0
        0x40ce428000000000L    # 15493.0
        0x40ce788000000000L    # 15601.0
        0x40ceb78000000000L    # 15727.0
        0x40cef98000000000L    # 15859.0
        0x40cf318000000000L    # 15971.0
        0x40cf648000000000L    # 16073.0
        0x40cf9b8000000000L    # 16183.0
        0x40cfd68000000000L    # 16301.0
        0x40d006c000000000L    # 16411.0
    .end array-data

    :array_5
    .array-data 8
        0x40cbc68000000000L    # 14221.0
        0x40ccfd8000000000L    # 14843.0
    .end array-data

    :array_6
    .array-data 8
        0x40c9648000000000L    # 13001.0
        0x40c9928000000000L    # 13093.0
        0x40c9b38000000000L    # 13159.0
        0x40c9d68000000000L    # 13229.0
        0x40c9f88000000000L    # 13297.0
        0x40ca1b8000000000L    # 13367.0
        0x40ca408000000000L    # 13441.0
        0x40ca648000000000L    # 13513.0
        0x40ca8b8000000000L    # 13591.0
        0x40cab28000000000L    # 13669.0
        0x40cadb8000000000L    # 13751.0
        0x40cb268000000000L    # 13901.0
        0x40cb478000000000L    # 13967.0
        0x40cb688000000000L    # 14033.0
        0x40cb8d8000000000L    # 14107.0
        0x40cbae8000000000L    # 14173.0
        0x40cbf88000000000L    # 14321.0
        0x40cc198000000000L    # 14387.0
        0x40cc3e8000000000L    # 14461.0
        0x40cc628000000000L    # 14533.0
        0x40cc8e8000000000L    # 14621.0
        0x40ccb58000000000L    # 14699.0
        0x40ccd78000000000L    # 14767.0
        0x40ccfd8000000000L    # 14843.0
        0x40cd258000000000L    # 14923.0
        0x40cd528000000000L    # 15013.0
        0x40cd758000000000L    # 15083.0
        0x40cd968000000000L    # 15149.0
        0x40cdb88000000000L    # 15217.0
        0x40cddb8000000000L    # 15287.0
    .end array-data

    :array_7
    .array-data 8
        0x40cb028000000000L    # 13829.0
        0x40cbd18000000000L    # 14243.0
    .end array-data

    :array_8
    .array-data 8
        0x40cb5c8000000000L    # 14009.0
        0x40cb808000000000L    # 14081.0
        0x40cba28000000000L    # 14149.0
        0x40cbc68000000000L    # 14221.0
        0x40cbea8000000000L    # 14293.0
        0x40cc108000000000L    # 14369.0
        0x40cc328000000000L    # 14437.0
        0x40cc538000000000L    # 14503.0
        0x40cc7f8000000000L    # 14591.0
        0x40cca08000000000L    # 14657.0
        0x40ccc18000000000L    # 14723.0
        0x40cce68000000000L    # 14797.0
        0x40cd2d8000000000L    # 14939.0
        0x40cd528000000000L    # 15013.0
        0x40cd758000000000L    # 15083.0
        0x40cd968000000000L    # 15149.0
        0x40cdb88000000000L    # 15217.0
        0x40cddb8000000000L    # 15287.0
        0x40ce218000000000L    # 15427.0
        0x40ce428000000000L    # 15493.0
        0x40ce638000000000L    # 15559.0
        0x40ce868000000000L    # 15629.0
        0x40ceb78000000000L    # 15727.0
        0x40ceda8000000000L    # 15797.0
        0x40cf028000000000L    # 15877.0
        0x40cf2b8000000000L    # 15959.0
        0x40cf508000000000L    # 16033.0
        0x40cf738000000000L    # 16103.0
        0x40cf9b8000000000L    # 16183.0
        0x40cfbc8000000000L    # 16249.0
    .end array-data

    :array_9
    .array-data 8
        0x40cd098000000000L    # 14867.0
        0x40cdff8000000000L    # 15359.0
    .end array-data

    :array_a
    .array-data 8
        0x40cb5c8000000000L    # 14009.0
        0x40cb9f8000000000L    # 14143.0
        0x40cbd48000000000L    # 14249.0
        0x40cc108000000000L    # 14369.0
        0x40cc478000000000L    # 14479.0
        0x40cc7f8000000000L    # 14591.0
        0x40ccb58000000000L    # 14699.0
        0x40ccee8000000000L    # 14813.0
        0x40cd258000000000L    # 14923.0
        0x40cd5b8000000000L    # 15031.0
        0x40cd908000000000L    # 15137.0
        0x40cdfa8000000000L    # 15349.0
        0x40ce2d8000000000L    # 15451.0
        0x40ce638000000000L    # 15559.0
        0x40ce968000000000L    # 15661.0
        0x40cecb8000000000L    # 15767.0
        0x40cf3b8000000000L    # 15991.0
        0x40cf708000000000L    # 16097.0
        0x40cfac8000000000L    # 16217.0
        0x40cfdf8000000000L    # 16319.0
        0x40d0094000000000L    # 16421.0
        0x40d0244000000000L    # 16529.0
        0x40d03dc000000000L    # 16631.0
        0x40d0594000000000L    # 16741.0
        0x40d072c000000000L    # 16843.0
        0x40d090c000000000L    # 16963.0
        0x40d0ad4000000000L    # 17077.0
        0x40d0c7c000000000L    # 17183.0
        0x40d0e2c000000000L    # 17291.0
        0x40d0fc4000000000L    # 17393.0
    .end array-data

    :array_b
    .array-data 8
        0x40cdc48000000000L    # 15241.0
        0x40cf028000000000L    # 15877.0
    .end array-data

    :array_c
    .array-data 8
        0x40cd528000000000L    # 15013.0
        0x40cd758000000000L    # 15083.0
        0x40cd968000000000L    # 15149.0
        0x40cdb88000000000L    # 15217.0
        0x40cddb8000000000L    # 15287.0
        0x40cdff8000000000L    # 15359.0
        0x40ce218000000000L    # 15427.0
        0x40ce428000000000L    # 15493.0
        0x40ce638000000000L    # 15559.0
        0x40ce868000000000L    # 15629.0
        0x40ceb78000000000L    # 15727.0
        0x40cf028000000000L    # 15877.0
        0x40cf2b8000000000L    # 15959.0
        0x40cf508000000000L    # 16033.0
        0x40cf738000000000L    # 16103.0
        0x40cf9b8000000000L    # 16183.0
        0x40cfdf8000000000L    # 16319.0
        0x40d006c000000000L    # 16411.0
        0x40d0174000000000L    # 16477.0
        0x40d028c000000000L    # 16547.0
        0x40d03ac000000000L    # 16619.0
        0x40d04cc000000000L    # 16691.0
        0x40d05dc000000000L    # 16759.0
        0x40d06f4000000000L    # 16829.0
        0x40d0814000000000L    # 16901.0
        0x40d094c000000000L    # 16979.0
        0x40d0a5c000000000L    # 17047.0
        0x40d0b74000000000L    # 17117.0
        0x40d0c7c000000000L    # 17183.0
        0x40d0da4000000000L    # 17257.0
    .end array-data

    :array_d
    .array-data 8
        0x40ceda8000000000L    # 15797.0
        0x40cfbc8000000000L    # 16249.0
    .end array-data

    :array_e
    .array-data 8
        0x40ccee8000000000L    # 14813.0
        0x40cd258000000000L    # 14923.0
        0x40cd5b8000000000L    # 15031.0
        0x40cd908000000000L    # 15137.0
        0x40cdc48000000000L    # 15241.0
        0x40cdfa8000000000L    # 15349.0
        0x40ce2d8000000000L    # 15451.0
        0x40ce638000000000L    # 15559.0
        0x40ce968000000000L    # 15661.0
        0x40cecb8000000000L    # 15767.0
        0x40cf028000000000L    # 15877.0
        0x40cf708000000000L    # 16097.0
        0x40cfac8000000000L    # 16217.0
        0x40cfdf8000000000L    # 16319.0
        0x40d0094000000000L    # 16421.0
        0x40d0244000000000L    # 16529.0
        0x40d0594000000000L    # 16741.0
        0x40d072c000000000L    # 16843.0
        0x40d090c000000000L    # 16963.0
        0x40d0ad4000000000L    # 17077.0
        0x40d0c7c000000000L    # 17183.0
        0x40d0e2c000000000L    # 17291.0
        0x40d0fc4000000000L    # 17393.0
        0x40d1164000000000L    # 17497.0
        0x40d12fc000000000L    # 17599.0
        0x40d14ac000000000L    # 17707.0
        0x40d168c000000000L    # 17827.0
        0x40d1824000000000L    # 17929.0
        0x40d19e4000000000L    # 18041.0
        0x40d1b7c000000000L    # 18143.0
    .end array-data

    :array_f
    .array-data 8
        0x40cf3b8000000000L    # 15991.0
        0x40d03dc000000000L    # 16631.0
    .end array-data
.end method
