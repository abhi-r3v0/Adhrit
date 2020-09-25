.class public final Lo/getCustomAmount;
.super Ljava/lang/Object;

# interfaces
.implements Lo/optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCustomAmount$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/optional;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/getCustomAmount;

    invoke-direct {v0}, Lo/getCustomAmount;-><init>()V

    sput-object v0, Lo/getCustomAmount;->onMessageChannelReady:Lo/optional;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 2000
    invoke-static {p1}, Lo/setCustomKey;->onPostMessage(Landroid/os/IBinder;)Lo/recordException;

    move-result-object p1

    return-object p1
.end method
