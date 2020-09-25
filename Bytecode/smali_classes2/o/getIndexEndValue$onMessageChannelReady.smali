.class public final Lo/getIndexEndValue$onMessageChannelReady;
.super Ljava/lang/ref/WeakReference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getIndexEndValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lo/getIndexEndValue;",
        ">;"
    }
.end annotation


# instance fields
.field public final onPostMessage:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lo/getIndexEndValue;Ljava/lang/Object;)V
    .locals 0

    .line 538
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 539
    iput-object p2, p0, Lo/getIndexEndValue$onMessageChannelReady;->onPostMessage:Ljava/lang/Object;

    return-void
.end method
