.class final Lo/getScaleY$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPivotX;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getScaleY;->onPostMessage(Ljava/lang/Object;)Lo/setPivotX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPivotX<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/getScaleY$1;->extraCallback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lo/getScaleY$1;->extraCallback:Ljava/lang/Object;

    return-object v0
.end method
