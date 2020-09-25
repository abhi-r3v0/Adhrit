.class final Lo/setEmbeddedTabView$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setEmbeddedTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AppCompatImageView<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/setEmbeddedTabView$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setEmbeddedTabView$ICustomTabsCallback<",
            "TData;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:[B


# direct methods
.method constructor <init>([BLo/setEmbeddedTabView$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lo/setEmbeddedTabView$ICustomTabsCallback<",
            "TData;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lo/setEmbeddedTabView$onNavigationEvent;->onMessageChannelReady:[B

    .line 62
    iput-object p2, p0, Lo/setEmbeddedTabView$onNavigationEvent;->extraCallback:Lo/setEmbeddedTabView$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final extraCallback()Lo/setImageURI;
    .locals 1

    .line 90
    sget-object v0, Lo/setImageURI;->onNavigationEvent:Lo/setImageURI;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lo/setEmbeddedTabView$onNavigationEvent;->extraCallback:Lo/setEmbeddedTabView$ICustomTabsCallback;

    invoke-interface {v0}, Lo/setEmbeddedTabView$ICustomTabsCallback;->ICustomTabsCallback()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/getTintList;Lo/AppCompatImageView$ICustomTabsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getTintList;",
            "Lo/AppCompatImageView$ICustomTabsCallback<",
            "-TData;>;)V"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lo/setEmbeddedTabView$onNavigationEvent;->extraCallback:Lo/setEmbeddedTabView$ICustomTabsCallback;

    iget-object v0, p0, Lo/setEmbeddedTabView$onNavigationEvent;->onMessageChannelReady:[B

    invoke-interface {p1, v0}, Lo/setEmbeddedTabView$ICustomTabsCallback;->extraCallback([B)Ljava/lang/Object;

    move-result-object p1

    .line 68
    invoke-interface {p2, p1}, Lo/AppCompatImageView$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;)V

    return-void
.end method
