.class final Lo/getRemoteControlClient$ICustomTabsCallback$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setMetadata$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRemoteControlClient$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/Class;)Lo/setQueue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/setQueue;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 286
    new-instance p1, Lo/getRemoteControlClient$ICustomTabsCallback;

    invoke-direct {p1}, Lo/getRemoteControlClient$ICustomTabsCallback;-><init>()V

    return-object p1
.end method
