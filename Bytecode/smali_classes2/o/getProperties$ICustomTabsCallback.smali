.class public final Lo/getProperties$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppsFlyerTrackingRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/getProperties$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/getProperties$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getProperties$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/getProperties$ICustomTabsCallback;->extraCallback:Lo/getProperties$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSchedule(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
