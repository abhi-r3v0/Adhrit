.class public final Lo/getIconUri$onNavigationEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getIconUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$firestore$remote$WatchChange$WatchTargetChangeType:[I

.field public static final compat_button_inset_horizontal_material:I = 0x7f07005b

.field public static final compat_button_inset_vertical_material:I = 0x7f07005c

.field public static final compat_button_padding_horizontal_material:I = 0x7f07005d

.field public static final compat_button_padding_vertical_material:I = 0x7f07005e

.field public static final compat_control_corner_material:I = 0x7f07005f

.field public static final compat_notification_large_icon_max_height:I = 0x7f070060

.field public static final compat_notification_large_icon_max_width:I = 0x7f070061

.field public static final notification_action_icon_size:I = 0x7f0701c9

.field public static final notification_action_text_size:I = 0x7f0701ca

.field public static final notification_big_circle_margin:I = 0x7f0701cb

.field public static final notification_content_margin_start:I = 0x7f0701cc

.field public static final notification_large_icon_height:I = 0x7f0701cd

.field public static final notification_large_icon_width:I = 0x7f0701ce

.field public static final notification_main_column_padding_top:I = 0x7f0701cf

.field public static final notification_media_narrow_margin:I = 0x7f0701d0

.field public static final notification_right_icon_size:I = 0x7f0701d1

.field public static final notification_right_side_padding_top:I = 0x7f0701d2

.field public static final notification_small_icon_background_padding:I = 0x7f0701d3

.field public static final notification_small_icon_size_as_large:I = 0x7f0701d4

.field public static final notification_subtext_size:I = 0x7f0701d5

.field public static final notification_top_pad:I = 0x7f0701d6

.field public static final notification_top_pad_large_text:I = 0x7f0701d7


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1107
    invoke-static {}, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->values()[Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/getIconUri$onNavigationEvent;->$SwitchMap$com$google$firebase$firestore$remote$WatchChange$WatchTargetChangeType:[I

    :try_start_0
    sget-object v1, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->NoChange:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/getIconUri$onNavigationEvent;->$SwitchMap$com$google$firebase$firestore$remote$WatchChange$WatchTargetChangeType:[I

    sget-object v1, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Added:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/getIconUri$onNavigationEvent;->$SwitchMap$com$google$firebase$firestore$remote$WatchChange$WatchTargetChangeType:[I

    sget-object v1, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Removed:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lo/getIconUri$onNavigationEvent;->$SwitchMap$com$google$firebase$firestore$remote$WatchChange$WatchTargetChangeType:[I

    sget-object v1, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Current:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lo/getIconUri$onNavigationEvent;->$SwitchMap$com$google$firebase$firestore$remote$WatchChange$WatchTargetChangeType:[I

    sget-object v1, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Reset:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 1008
    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-lt v0, p1, :cond_2

    .line 1011
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p1, p2, :cond_1

    .line 1014
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1016
    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p3, p2, :cond_0

    .line 1017
    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p2, v0

    add-int/2addr p3, v0

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 1018
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object p1

    .line 1012
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bottom point of input rect can\'t be bigger than maxTop"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1009
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "top point of input rect can\'t be lower than minTop"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
