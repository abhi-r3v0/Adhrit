.class public final Lo/AppsFlyerLibCore$b;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setMultiFactorSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AppsFlyerLibCore$b$onMessageChannelReady;,
        Lo/AppsFlyerLibCore$b$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final extraCallback:Lo/setMultiFactorSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/AppsFlyerLibCore$b;

    invoke-direct {v0}, Lo/AppsFlyerLibCore$b;-><init>()V

    sput-object v0, Lo/AppsFlyerLibCore$b;->extraCallback:Lo/setMultiFactorSession;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)I
    .locals 0

    return p1
.end method
