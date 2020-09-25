.class public interface abstract Lo/sendUnauth;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onPostMessage:Lo/sendUnauth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lo/sendUnauth$4;

    invoke-direct {v0}, Lo/sendUnauth$4;-><init>()V

    sput-object v0, Lo/sendUnauth;->onPostMessage:Lo/sendUnauth;

    return-void
.end method


# virtual methods
.method public abstract onMessageChannelReady()J
.end method
