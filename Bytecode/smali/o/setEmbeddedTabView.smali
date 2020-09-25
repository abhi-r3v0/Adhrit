.class public final Lo/setEmbeddedTabView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setEmbeddedTabView$extraCallback;,
        Lo/setEmbeddedTabView$onPostMessage;,
        Lo/setEmbeddedTabView$onNavigationEvent;,
        Lo/setEmbeddedTabView$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setNavigationContentDescription<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/setEmbeddedTabView$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setEmbeddedTabView$ICustomTabsCallback<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setEmbeddedTabView$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setEmbeddedTabView$ICustomTabsCallback<",
            "TData;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/setEmbeddedTabView;->onPostMessage:Lo/setEmbeddedTabView$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 1

    .line 20
    check-cast p1, [B

    .line 1031
    new-instance p2, Lo/setNavigationContentDescription$ICustomTabsCallback;

    new-instance p3, Lo/setSoftInputMode;

    invoke-direct {p3, p1}, Lo/setSoftInputMode;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lo/setEmbeddedTabView$onNavigationEvent;

    iget-object v0, p0, Lo/setEmbeddedTabView;->onPostMessage:Lo/setEmbeddedTabView$ICustomTabsCallback;

    invoke-direct {p4, p1, v0}, Lo/setEmbeddedTabView$onNavigationEvent;-><init>([BLo/setEmbeddedTabView$ICustomTabsCallback;)V

    invoke-direct {p2, p3, p4}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V

    return-object p2
.end method

.method public final bridge synthetic onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
