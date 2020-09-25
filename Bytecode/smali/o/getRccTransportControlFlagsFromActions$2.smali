.class final Lo/getRccTransportControlFlagsFromActions$2;
.super Landroid/os/RemoteCallbackList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRccTransportControlFlagsFromActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Lo/MediaSessionCompat$Callback$StubApi21;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/getRccTransportControlFlagsFromActions;


# direct methods
.method constructor <init>(Lo/getRccTransportControlFlagsFromActions;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lo/getRccTransportControlFlagsFromActions$2;->extraCallback:Lo/getRccTransportControlFlagsFromActions;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0

    .line 1056
    iget-object p1, p0, Lo/getRccTransportControlFlagsFromActions$2;->extraCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object p1, p1, Lo/getRccTransportControlFlagsFromActions;->extraCallback:Ljava/util/HashMap;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
