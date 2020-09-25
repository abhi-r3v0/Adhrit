.class public interface abstract Lo/UPIJSInterface$3;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onPostMessage:Lo/UPIJSInterface$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lo/UPIJSInterface$3$1;

    invoke-direct {v0}, Lo/UPIJSInterface$3$1;-><init>()V

    sput-object v0, Lo/UPIJSInterface$3;->onPostMessage:Lo/UPIJSInterface$3;

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Lo/p$a;)Lo/getSessionId;
.end method

.method public abstract onPostMessage(Lo/p$a;)Z
.end method
