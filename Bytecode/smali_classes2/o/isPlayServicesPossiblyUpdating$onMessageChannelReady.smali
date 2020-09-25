.class public final Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;
.super Lo/createSearchAdManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isPlayServicesPossiblyUpdating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/isPlayServicesPossiblyUpdating<",
        "TT;*>;>",
        "Lo/createSearchAdManager<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/isPlayServicesPossiblyUpdating;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/createSearchAdManager;-><init>()V

    .line 2
    iput-object p1, p0, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating;

    return-void
.end method
