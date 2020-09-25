.class public final Lo/getDecoratedHint;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/updateSearchAutoComplete;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/updateSearchAutoComplete<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/domain/NoOpPersistenceStrategy;",
        "T",
        "",
        "Lcom/datadog/android/core/internal/domain/PersistenceStrategy;",
        "()V",
        "getReader",
        "Lcom/datadog/android/core/internal/data/Reader;",
        "getWriter",
        "Lcom/datadog/android/core/internal/data/Writer;",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/getChildBoundsWithinSearchView;
    .locals 1

    .line 28
    new-instance v0, Lo/getDecoratedHint$extraCallback;

    invoke-direct {v0}, Lo/getDecoratedHint$extraCallback;-><init>()V

    check-cast v0, Lo/getChildBoundsWithinSearchView;

    return-object v0
.end method

.method public final onPostMessage()Lo/getPreferredWidth;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getPreferredWidth<",
            "TT;>;"
        }
    .end annotation

    .line 16
    new-instance v0, Lo/getDecoratedHint$onPostMessage;

    invoke-direct {v0}, Lo/getDecoratedHint$onPostMessage;-><init>()V

    check-cast v0, Lo/getPreferredWidth;

    return-object v0
.end method
