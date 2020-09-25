.class public final Lo/isCurrent$ICustomTabsCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lo/initTitle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isCurrent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

.field public static final Base_CardView:I = 0x7f140011

.field public static final CardView:I = 0x7f1400e9

.field public static final CardView_Dark:I = 0x7f1400ea

.field public static final CardView_Light:I = 0x7f1400eb


# instance fields
.field public final ICustomTabsCallback:Lo/startActionModeForChild;

.field public final extraCallback:Lo/onLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onLayout<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Z

.field public final onNavigationEvent:Z

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2539
    invoke-static {}, Lo/isCrashed$onNavigationEvent;->values()[Lo/isCrashed$onNavigationEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/isCurrent$ICustomTabsCallback;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    :try_start_0
    sget-object v1, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/isCurrent$ICustomTabsCallback;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v1, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/isCurrent$ICustomTabsCallback;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v1, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lo/isCurrent$ICustomTabsCallback;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v1, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lo/isCurrent$ICustomTabsCallback;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v1, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

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

    .line 2009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/onLayout;Lo/startActionModeForChild;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/onLayout<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lo/startActionModeForChild;",
            "ZZ)V"
        }
    .end annotation

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-object p1, p0, Lo/isCurrent$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 1022
    iput-object p2, p0, Lo/isCurrent$ICustomTabsCallback;->extraCallback:Lo/onLayout;

    .line 1023
    iput-object p3, p0, Lo/isCurrent$ICustomTabsCallback;->ICustomTabsCallback:Lo/startActionModeForChild;

    .line 1024
    iput-boolean p4, p0, Lo/isCurrent$ICustomTabsCallback;->onNavigationEvent:Z

    .line 1025
    iput-boolean p5, p0, Lo/isCurrent$ICustomTabsCallback;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;
    .locals 1

    .line 1029
    new-instance v0, Lo/setShortcut;

    invoke-direct {v0, p1, p2, p0}, Lo/setShortcut;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/isCurrent$ICustomTabsCallback;)V

    return-object v0
.end method
