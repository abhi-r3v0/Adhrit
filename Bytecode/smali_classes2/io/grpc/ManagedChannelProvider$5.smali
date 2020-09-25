.class final Lio/grpc/ManagedChannelProvider$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/translate$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ManagedChannelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/translate$extraCallback<",
        "Lio/grpc/ManagedChannelProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lio/grpc/ManagedChannelProvider;

    .line 1049
    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider;->onMessageChannelReady()I

    move-result p1

    return p1
.end method
