.class public final Lo/writeCachedSettings;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getReferrer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeCachedSettings$onPostMessage;,
        Lo/writeCachedSettings$extraCallback;,
        Lo/writeCachedSettings$ICustomTabsCallback;,
        Lo/writeCachedSettings$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final $instance:Lo/getReferrer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/writeCachedSettings;

    invoke-direct {v0}, Lo/writeCachedSettings;-><init>()V

    sput-object v0, Lo/writeCachedSettings;->$instance:Lo/getReferrer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2000
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method
