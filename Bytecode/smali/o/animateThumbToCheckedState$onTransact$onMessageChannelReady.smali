.class final Lo/animateThumbToCheckedState$onTransact$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateThumbToCheckedState$onTransact;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/animateThumbToCheckedState$onTransact$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/animateThumbToCheckedState$onTransact$onMessageChannelReady;

    invoke-direct {v0}, Lo/animateThumbToCheckedState$onTransact$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/animateThumbToCheckedState$onTransact$onMessageChannelReady;->extraCallback:Lo/animateThumbToCheckedState$onTransact$onMessageChannelReady;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1024
    sget-object v0, Lo/animateThumbToCheckedState;->extraCallback:Lo/animateThumbToCheckedState;

    invoke-static {}, Lo/animateThumbToCheckedState;->onPostMessage()V

    .line 19
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
