.class public Lo/MediaBrowserCompat$SubscriptionCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;
    }
.end annotation


# static fields
.field private static onMessageChannelReady:Landroid/util/SparseIntArray;

.field private static final onNavigationEvent:[I


# instance fields
.field extraCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 195
    fill-array-data v1, :array_0

    sput-object v1, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent:[I

    .line 200
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 274
    sput-object v1, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v2, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 275
    sget-object v1, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v2, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 276
    sget-object v1, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v2, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 277
    sget-object v1, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v2, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 278
    sget-object v1, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v2, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 279
    sget-object v1, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v2, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    sget-object v1, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v2, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 281
    sget-object v1, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v2, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 282
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 284
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 285
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 286
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 287
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 288
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 289
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 290
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 291
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 292
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 293
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 294
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 295
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 296
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 297
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 298
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 299
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 300
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 301
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 302
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 303
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 305
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 306
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 307
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 308
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintLeft_creator:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 309
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 310
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 311
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 312
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 314
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 315
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 316
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 318
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 319
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 320
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 321
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 322
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 324
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 326
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 329
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 331
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 335
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 336
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 337
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 338
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 339
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 341
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 342
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 343
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 345
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 346
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 348
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 349
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 350
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_constraint_referenced_ids:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    sget-object v0, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    sget v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    return-void
.end method

.method private static ICustomTabsCallback(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "undefined"

    return-object p0

    :pswitch_0
    const-string p0, "end"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "start"

    return-object p0

    :pswitch_2
    const-string p0, "baseline"

    return-object p0

    :pswitch_3
    const-string p0, "bottom"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "top"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "right"

    return-object p0

    :pswitch_6
    const-string p0, "left"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static onMessageChannelReady(Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;Landroid/content/res/TypedArray;)V
    .locals 7

    .line 2197
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_e

    .line 2199
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 2238
    sget-object v3, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/4 v4, -0x1

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "   "

    const-string v6, "ConstraintSet"

    packed-switch v3, :pswitch_data_2

    .line 2436
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown attribute 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2437
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2436
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2432
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unused attribute 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2433
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2432
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2429
    :pswitch_1
    iget-boolean v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnected:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnected:Z

    goto/16 :goto_1

    .line 2426
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CustomActionCallback:Ljava/lang/String;

    goto/16 :goto_1

    .line 2423
    :pswitch_3
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionFailed:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionFailed:I

    goto/16 :goto_1

    :pswitch_4
    const-string v2, "CURRENTLY UNSUPPORTED"

    .line 2419
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2416
    :pswitch_5
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setInternalConnectionCallback:F

    goto/16 :goto_1

    .line 2413
    :pswitch_6
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CallbackHandler:F

    goto/16 :goto_1

    .line 2303
    :pswitch_7
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->notify:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->notify:F

    goto/16 :goto_1

    .line 2300
    :pswitch_8
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub:I

    goto/16 :goto_1

    .line 2297
    :pswitch_9
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    .line 18181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 18183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2297
    :cond_0
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    goto/16 :goto_1

    .line 2365
    :pswitch_a
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->isConnected:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->isConnected:F

    goto/16 :goto_1

    .line 2392
    :pswitch_b
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback:F

    goto/16 :goto_1

    .line 2389
    :pswitch_c
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->handleMessage:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->handleMessage:F

    goto/16 :goto_1

    .line 2386
    :pswitch_d
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setCallbacksMessenger:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setCallbacksMessenger:F

    goto/16 :goto_1

    .line 2383
    :pswitch_e
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getNotifyChildrenChangedOptions:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getNotifyChildrenChangedOptions:F

    goto/16 :goto_1

    .line 2380
    :pswitch_f
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->subscribe:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->subscribe:F

    goto/16 :goto_1

    .line 2377
    :pswitch_10
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getItem:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getItem:F

    goto/16 :goto_1

    .line 2374
    :pswitch_11
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->unsubscribe:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->unsubscribe:F

    goto/16 :goto_1

    .line 2371
    :pswitch_12
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->search:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->search:F

    goto/16 :goto_1

    .line 2368
    :pswitch_13
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->sendCustomAction:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->sendCustomAction:F

    goto/16 :goto_1

    :pswitch_14
    const/4 v3, 0x1

    .line 2361
    iput-boolean v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getRoot:Z

    .line 2362
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getExtras:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getExtras:F

    goto/16 :goto_1

    .line 2358
    :pswitch_15
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    goto/16 :goto_1

    .line 2401
    :pswitch_16
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getServiceComponent:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getServiceComponent:I

    goto/16 :goto_1

    .line 2404
    :pswitch_17
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->connect:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->connect:I

    goto/16 :goto_1

    .line 2395
    :pswitch_18
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplBaseParcelizer:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplBaseParcelizer:F

    goto/16 :goto_1

    .line 2398
    :pswitch_19
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat:F

    goto/16 :goto_1

    .line 2407
    :pswitch_1a
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onMessageChannelReady:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onMessageChannelReady:I

    goto/16 :goto_1

    .line 2327
    :pswitch_1b
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService:F

    goto/16 :goto_1

    .line 2252
    :pswitch_1c
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    .line 9181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 9183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2252
    :cond_1
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    goto/16 :goto_1

    .line 2255
    :pswitch_1d
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    .line 10181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 10183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2255
    :cond_2
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    goto/16 :goto_1

    .line 2342
    :pswitch_1e
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setDefaultImpl:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setDefaultImpl:I

    goto/16 :goto_1

    .line 2288
    :pswitch_1f
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->mayLaunchUrl:I

    .line 15181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 15183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2288
    :cond_3
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->mayLaunchUrl:I

    goto/16 :goto_1

    .line 2285
    :pswitch_20
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCommand:I

    .line 14181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 14183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2285
    :cond_4
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCommand:I

    goto/16 :goto_1

    .line 2336
    :pswitch_21
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    goto/16 :goto_1

    .line 2249
    :pswitch_22
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    .line 8181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 8183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2249
    :cond_5
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    goto/16 :goto_1

    .line 2246
    :pswitch_23
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onRelationshipValidationResult:I

    .line 7181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_6

    .line 7183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2246
    :cond_6
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onRelationshipValidationResult:I

    goto/16 :goto_1

    .line 2333
    :pswitch_24
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getDefaultImpl:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getDefaultImpl:I

    goto/16 :goto_1

    .line 2282
    :pswitch_25
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel:I

    goto/16 :goto_1

    .line 2243
    :pswitch_26
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onTransact:I

    .line 6181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_7

    .line 6183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2243
    :cond_7
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onTransact:I

    goto/16 :goto_1

    .line 2240
    :pswitch_27
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asBinder:I

    .line 5181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_8

    .line 5183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2240
    :cond_8
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asBinder:I

    goto/16 :goto_1

    .line 2330
    :pswitch_28
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub$Proxy:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub$Proxy:I

    goto/16 :goto_1

    .line 2348
    :pswitch_29
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onPostMessage:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onPostMessage:I

    goto/16 :goto_1

    .line 2354
    :pswitch_2a
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 2355
    sget-object v2, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent:[I

    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    aget v2, v2, v3

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    goto/16 :goto_1

    .line 2351
    :pswitch_2b
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback:I

    goto/16 :goto_1

    .line 2324
    :pswitch_2c
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    goto/16 :goto_1

    .line 2279
    :pswitch_2d
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asInterface:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asInterface:F

    goto/16 :goto_1

    .line 2276
    :pswitch_2e
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub:I

    goto/16 :goto_1

    .line 2273
    :pswitch_2f
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onNavigationEvent:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onNavigationEvent:I

    goto/16 :goto_1

    .line 2309
    :pswitch_30
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->read:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->read:I

    goto/16 :goto_1

    .line 2318
    :pswitch_31
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->disconnect:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->disconnect:I

    goto/16 :goto_1

    .line 2312
    :pswitch_32
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IconCompatParcelizer:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IconCompatParcelizer:I

    goto/16 :goto_1

    .line 2306
    :pswitch_33
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->write:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->write:I

    goto/16 :goto_1

    .line 2321
    :pswitch_34
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplApi21Parcelizer:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplApi21Parcelizer:I

    goto/16 :goto_1

    .line 2315
    :pswitch_35
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesCompatParcelizer:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesCompatParcelizer:I

    goto/16 :goto_1

    .line 2291
    :pswitch_36
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->requestPostMessageChannel:I

    .line 16181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_9

    .line 16183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2291
    :cond_9
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->requestPostMessageChannel:I

    goto :goto_1

    .line 2294
    :pswitch_37
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->updateVisuals:I

    .line 17181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_a

    .line 17183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2294
    :cond_a
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->updateVisuals:I

    goto :goto_1

    .line 2339
    :pswitch_38
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub:I

    goto :goto_1

    .line 2270
    :pswitch_39
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancelAll:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancelAll:I

    goto :goto_1

    .line 2267
    :pswitch_3a
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancel:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancel:I

    goto :goto_1

    .line 2410
    :pswitch_3b
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->validateRelationship:Ljava/lang/String;

    goto :goto_1

    .line 2258
    :pswitch_3c
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    .line 11181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_b

    .line 11183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2258
    :cond_b
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    goto :goto_1

    .line 2261
    :pswitch_3d
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    .line 12181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_c

    .line 12183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2261
    :cond_c
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    goto :goto_1

    .line 2345
    :pswitch_3e
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Default:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Default:I

    goto :goto_1

    .line 2264
    :pswitch_3f
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    .line 13181
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v4, :cond_d

    .line 13183
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2264
    :cond_d
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x45
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static onMessageChannelReady(Landroid/view/View;Ljava/lang/String;)[I
    .locals 9

    const-string v0, ","

    .line 2443
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2444
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2445
    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2447
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 2448
    aget-object v5, p1, v3

    .line 2449
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2452
    :try_start_0
    const-class v6, Lo/MediaDescriptionCompat$extraCallback;

    .line 2453
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    .line 2454
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_0

    .line 2460
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2461
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    .line 2460
    invoke-virtual {v6, v5, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    .line 2464
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Lo/onChildrenLoaded;

    if-eqz v7, :cond_1

    .line 2465
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lo/onChildrenLoaded;

    .line 2466
    invoke-virtual {v7, v5}, Lo/onChildrenLoaded;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2467
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_1

    .line 2468
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v6

    :cond_1
    add-int/lit8 v5, v4, 0x1

    .line 2471
    aput v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 2473
    :cond_2
    array-length p0, p1

    if-eq v4, p0, :cond_3

    .line 2474
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 4

    .line 693
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    .line 694
    iget-object v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 695
    iget-object v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    iget-object v3, p1, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    invoke-virtual {v3}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback()Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Lo/onChildrenLoaded;)V
    .locals 12

    .line 705
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 706
    iget-object v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 708
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 709
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lo/onChildrenLoaded$onPostMessage;

    .line 711
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 715
    iget-object v6, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 716
    iget-object v6, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    invoke-direct {v8, v1}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;-><init>(B)V

    invoke-virtual {v6, v7, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_0
    iget-object v6, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    .line 3358
    invoke-virtual {v6, v5, v4}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onMessageChannelReady(ILo/onChildrenLoaded$onPostMessage;)V

    .line 720
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    iput v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 721
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_3

    .line 722
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    .line 723
    invoke-virtual {v3}, Landroid/view/View;->getRotation()F

    move-result v4

    iput v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->isConnected:F

    .line 724
    invoke-virtual {v3}, Landroid/view/View;->getRotationX()F

    move-result v4

    iput v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->sendCustomAction:F

    .line 725
    invoke-virtual {v3}, Landroid/view/View;->getRotationY()F

    move-result v4

    iput v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->search:F

    .line 726
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v4

    iput v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->unsubscribe:F

    .line 727
    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v4

    iput v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getItem:F

    .line 729
    invoke-virtual {v3}, Landroid/view/View;->getPivotX()F

    move-result v4

    .line 730
    invoke-virtual {v3}, Landroid/view/View;->getPivotY()F

    move-result v5

    float-to-double v7, v4

    const-wide/16 v9, 0x0

    cmpl-double v11, v7, v9

    if-nez v11, :cond_1

    float-to-double v7, v5

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_2

    .line 733
    :cond_1
    iput v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->subscribe:F

    .line 734
    iput v5, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getNotifyChildrenChangedOptions:F

    .line 737
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iput v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setCallbacksMessenger:F

    .line 738
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iput v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->handleMessage:F

    .line 739
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    .line 740
    invoke-virtual {v3}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iput v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback:F

    .line 741
    iget-boolean v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getRoot:Z

    if-eqz v4, :cond_3

    .line 742
    invoke-virtual {v3}, Landroid/view/View;->getElevation()F

    move-result v4

    iput v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getExtras:F

    .line 746
    :cond_3
    instance-of v4, v3, Lo/putCallback;

    if-eqz v4, :cond_4

    .line 747
    check-cast v3, Lo/putCallback;

    .line 4204
    iget-object v4, v3, Lo/putCallback;->onPostMessage:Lo/MediaBrowserCompat$SearchCallback;

    .line 5051
    iget-boolean v4, v4, Lo/MediaBrowserCompat$SearchCallback;->ICustomTabsCallback:Z

    .line 748
    iput-boolean v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnected:Z

    .line 749
    invoke-virtual {v3}, Lo/getCallbacks;->ICustomTabsCallback()[I

    move-result-object v4

    iput-object v4, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[I

    .line 5135
    iget v3, v3, Lo/putCallback;->ICustomTabsCallback:I

    .line 750
    iput v3, v6, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionFailed:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 713
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method

.method public final extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;
    .locals 4

    .line 2110
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2111
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    return-object p1
.end method

.method public final extraCallback(II)V
    .locals 2

    .line 1371
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1415
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1409
    :pswitch_0
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->requestPostMessageChannel:I

    .line 1410
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->updateVisuals:I

    .line 1411
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub:I

    .line 1412
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplApi21Parcelizer:I

    return-void

    .line 1403
    :pswitch_1
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCommand:I

    .line 1404
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->mayLaunchUrl:I

    .line 1405
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    .line 1406
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->disconnect:I

    return-void

    .line 1400
    :pswitch_2
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    return-void

    .line 1393
    :pswitch_3
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    .line 1394
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    .line 1395
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Default:I

    .line 1396
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesCompatParcelizer:I

    return-void

    .line 1387
    :pswitch_4
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    .line 1388
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    .line 1389
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setDefaultImpl:I

    .line 1390
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->read:I

    return-void

    .line 1381
    :pswitch_5
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    .line 1382
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onRelationshipValidationResult:I

    .line 1383
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getDefaultImpl:I

    .line 1384
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IconCompatParcelizer:I

    return-void

    .line 1375
    :pswitch_6
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onTransact:I

    .line 1376
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asBinder:I

    .line 1377
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub$Proxy:I

    .line 1378
    iput v0, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->write:I

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final extraCallback(IIII)V
    .locals 9

    .line 1219
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string/jumbo v6, "right to "

    const-string v7, " undefined"

    const/4 v8, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1307
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1308
    invoke-static {p2}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unknown"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-ne p4, v1, :cond_1

    .line 1297
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->updateVisuals:I

    .line 1298
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->requestPostMessageChannel:I

    return-void

    :cond_1
    if-ne p4, v2, :cond_2

    .line 1300
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->requestPostMessageChannel:I

    .line 1301
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->updateVisuals:I

    return-void

    .line 1303
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    if-ne p4, v2, :cond_3

    .line 1286
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->mayLaunchUrl:I

    .line 1287
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCommand:I

    return-void

    :cond_3
    if-ne p4, v1, :cond_4

    .line 1289
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCommand:I

    .line 1290
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->mayLaunchUrl:I

    return-void

    .line 1292
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    const/4 p2, 0x5

    if-ne p4, p2, :cond_5

    .line 1275
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    .line 1276
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    .line 1277
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    .line 1278
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    .line 1279
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    return-void

    .line 1281
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    if-ne p4, v3, :cond_6

    .line 1262
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    .line 1263
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    .line 1264
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    return-void

    :cond_6
    if-ne p4, v4, :cond_7

    .line 1266
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    .line 1267
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    .line 1268
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    return-void

    .line 1270
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    if-ne p4, v4, :cond_8

    .line 1249
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    .line 1250
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    .line 1251
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    return-void

    :cond_8
    if-ne p4, v3, :cond_9

    .line 1253
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    .line 1254
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    .line 1255
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    return-void

    .line 1257
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    if-ne p4, v5, :cond_a

    .line 1237
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onRelationshipValidationResult:I

    .line 1238
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    return-void

    :cond_a
    if-ne p4, v0, :cond_b

    .line 1241
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    .line 1242
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onRelationshipValidationResult:I

    return-void

    .line 1244
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    if-ne p4, v5, :cond_c

    .line 1226
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asBinder:I

    .line 1227
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onTransact:I

    return-void

    :cond_c
    if-ne p4, v0, :cond_d

    .line 1229
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onTransact:I

    .line 1230
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asBinder:I

    return-void

    .line 1232
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "left to "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onMessageChannelReady(IIIII)V
    .locals 9

    .line 1106
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string/jumbo v6, "right to "

    const-string v7, " undefined"

    const/4 v8, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1205
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1206
    invoke-static {p2}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unknown"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-ne p4, v1, :cond_1

    .line 1194
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->updateVisuals:I

    .line 1195
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->requestPostMessageChannel:I

    goto :goto_0

    :cond_1
    if-ne p4, v2, :cond_2

    .line 1197
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->requestPostMessageChannel:I

    .line 1198
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->updateVisuals:I

    .line 1202
    :goto_0
    iput p5, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub:I

    return-void

    .line 1200
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    if-ne p4, v2, :cond_3

    .line 1182
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->mayLaunchUrl:I

    .line 1183
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCommand:I

    goto :goto_1

    :cond_3
    if-ne p4, v1, :cond_4

    .line 1185
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCommand:I

    .line 1186
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->mayLaunchUrl:I

    .line 1190
    :goto_1
    iput p5, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    return-void

    .line 1188
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    const/4 p2, 0x5

    if-ne p4, p2, :cond_5

    .line 1171
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    .line 1172
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    .line 1173
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    .line 1174
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    .line 1175
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    return-void

    .line 1177
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    if-ne p4, v3, :cond_6

    .line 1155
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    .line 1156
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    .line 1157
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    goto :goto_2

    :cond_6
    if-ne p4, v4, :cond_7

    .line 1160
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    .line 1161
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    .line 1162
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    .line 1167
    :goto_2
    iput p5, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Default:I

    return-void

    .line 1165
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    if-ne p4, v4, :cond_8

    .line 1140
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    .line 1141
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    .line 1142
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    goto :goto_3

    :cond_8
    if-ne p4, v3, :cond_9

    .line 1144
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    .line 1145
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    .line 1146
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    .line 1151
    :goto_3
    iput p5, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setDefaultImpl:I

    return-void

    .line 1149
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    if-ne p4, v5, :cond_a

    .line 1126
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onRelationshipValidationResult:I

    .line 1127
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    goto :goto_4

    :cond_a
    if-ne p4, v0, :cond_b

    .line 1130
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    .line 1131
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onRelationshipValidationResult:I

    .line 1136
    :goto_4
    iput p5, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getDefaultImpl:I

    return-void

    .line 1134
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    if-ne p4, v5, :cond_c

    .line 1113
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asBinder:I

    .line 1114
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onTransact:I

    goto :goto_5

    :cond_c
    if-ne p4, v0, :cond_d

    .line 1116
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onTransact:I

    .line 1117
    iput v8, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asBinder:I

    .line 1122
    :goto_5
    iput p5, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub$Proxy:I

    return-void

    .line 1120
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Left to "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final onMessageChannelReady(Lo/onChildrenLoaded;)V
    .locals 9

    .line 797
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 798
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge v2, v0, :cond_8

    .line 801
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 802
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v3, :cond_7

    .line 806
    iget-object v7, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 807
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 808
    iget-object v7, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    .line 809
    instance-of v8, v5, Lo/putCallback;

    if-eqz v8, :cond_0

    .line 810
    iput v4, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionSuspended:I

    .line 812
    :cond_0
    iget v8, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionSuspended:I

    if-eq v8, v3, :cond_3

    .line 813
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionSuspended:I

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 815
    :cond_1
    move-object v3, v5

    check-cast v3, Lo/putCallback;

    .line 816
    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    .line 817
    iget v4, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionFailed:I

    invoke-virtual {v3, v4}, Lo/putCallback;->setType(I)V

    .line 818
    iget-boolean v4, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnected:Z

    invoke-virtual {v3, v4}, Lo/putCallback;->setAllowsGoneWidget(Z)V

    .line 819
    iget-object v4, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[I

    if-eqz v4, :cond_2

    .line 820
    iget-object v4, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[I

    invoke-virtual {v3, v4}, Lo/getCallbacks;->setReferencedIds([I)V

    goto :goto_1

    .line 821
    :cond_2
    iget-object v4, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CustomActionCallback:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 822
    iget-object v4, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CustomActionCallback:Ljava/lang/String;

    invoke-static {v3, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[I

    .line 824
    iget-object v4, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[I

    invoke-virtual {v3, v4}, Lo/getCallbacks;->setReferencedIds([I)V

    .line 830
    :cond_3
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded$onPostMessage;

    .line 831
    invoke-virtual {v7, v3}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onNavigationEvent(Lo/onChildrenLoaded$onPostMessage;)V

    .line 832
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 834
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_6

    .line 835
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 836
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->isConnected:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    .line 837
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->sendCustomAction:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationX(F)V

    .line 838
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->search:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationY(F)V

    .line 839
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->unsubscribe:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 840
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getItem:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 841
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->subscribe:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_4

    .line 842
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->subscribe:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotX(F)V

    .line 844
    :cond_4
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getNotifyChildrenChangedOptions:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5

    .line 845
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getNotifyChildrenChangedOptions:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotY(F)V

    .line 847
    :cond_5
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setCallbacksMessenger:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 848
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->handleMessage:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 849
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_6

    .line 850
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 851
    iget-boolean v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getRoot:Z

    if-eqz v3, :cond_6

    .line 852
    iget v3, v7, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getExtras:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setElevation(F)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 804
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 858
    :cond_8
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 859
    iget-object v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    .line 860
    iget v5, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionSuspended:I

    if-eq v5, v3, :cond_d

    .line 861
    iget v5, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionSuspended:I

    if-eq v5, v4, :cond_a

    goto :goto_4

    .line 863
    :cond_a
    new-instance v5, Lo/putCallback;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lo/putCallback;-><init>(Landroid/content/Context;)V

    .line 864
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 865
    iget-object v6, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[I

    if-eqz v6, :cond_b

    .line 866
    iget-object v6, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[I

    invoke-virtual {v5, v6}, Lo/getCallbacks;->setReferencedIds([I)V

    goto :goto_3

    .line 867
    :cond_b
    iget-object v6, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CustomActionCallback:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 868
    iget-object v6, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CustomActionCallback:Ljava/lang/String;

    invoke-static {v5, v6}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[I

    .line 870
    iget-object v6, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[I

    invoke-virtual {v5, v6}, Lo/getCallbacks;->setReferencedIds([I)V

    .line 872
    :cond_c
    :goto_3
    iget v6, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionFailed:I

    invoke-virtual {v5, v6}, Lo/putCallback;->setType(I)V

    .line 874
    invoke-static {}, Lo/onChildrenLoaded;->onNavigationEvent()Lo/onChildrenLoaded$onPostMessage;

    move-result-object v6

    .line 875
    invoke-virtual {v5}, Lo/getCallbacks;->onMessageChannelReady()V

    .line 876
    invoke-virtual {v2, v6}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onNavigationEvent(Lo/onChildrenLoaded$onPostMessage;)V

    .line 877
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    :cond_d
    :goto_4
    iget-boolean v5, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCallback:Z

    if-eqz v5, :cond_9

    .line 882
    new-instance v5, Lo/applyOptions;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lo/applyOptions;-><init>(Landroid/content/Context;)V

    .line 883
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setId(I)V

    .line 884
    invoke-static {}, Lo/onChildrenLoaded;->onNavigationEvent()Lo/onChildrenLoaded$onPostMessage;

    move-result-object v1

    .line 885
    invoke-virtual {v2, v1}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onNavigationEvent(Lo/onChildrenLoaded$onPostMessage;)V

    .line 886
    invoke-virtual {p1, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_e
    return-void
.end method

.method public final onNavigationEvent(Lo/onChildrenLoaded;)V
    .locals 1

    .line 789
    invoke-virtual {p0, p1}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(Lo/onChildrenLoaded;)V

    const/4 v0, 0x0

    .line 790
    invoke-virtual {p1, v0}, Lo/onChildrenLoaded;->setConstraintSet(Lo/MediaBrowserCompat$SubscriptionCallback;)V

    return-void
.end method

.method public final onPostMessage(III)V
    .locals 0

    .line 1428
    invoke-virtual {p0, p1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object p1

    packed-switch p2, :pswitch_data_0

    .line 1451
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1448
    :pswitch_0
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub:I

    return-void

    .line 1445
    :pswitch_1
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    return-void

    .line 1443
    :pswitch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "baseline does not support margins"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1440
    :pswitch_3
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Default:I

    return-void

    .line 1437
    :pswitch_4
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setDefaultImpl:I

    return-void

    .line 1434
    :pswitch_5
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getDefaultImpl:I

    return-void

    .line 1431
    :pswitch_6
    iput p3, p1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub$Proxy:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
