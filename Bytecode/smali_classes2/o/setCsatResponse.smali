.class public final Lo/setCsatResponse;
.super Lo/ConversationsResponse;
.source ""

# interfaces
.implements Lo/setConversations;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.api.internal.IStringProvider"

    .line 1
    invoke-direct {p0, p1, v0}, Lo/ConversationsResponse;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
