.class public final Lo/available;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/serverCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/serverCache<",
        "Lo/aj;",
        ">;"
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/available;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/available;

    invoke-direct {v0}, Lo/available;-><init>()V

    sput-object v0, Lo/available;->onPostMessage:Lo/available;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 2

    .line 1024
    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule;->ICustomTabsCallback()Lo/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/aj;

    return-object v0

    .line 1048
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
