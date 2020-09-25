.class public final Lo/c$a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/serverCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/serverCache<",
        "Lo/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/c$a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/c$a$c;

    invoke-direct {v0}, Lo/c$a$c;-><init>()V

    sput-object v0, Lo/c$a$c;->onPostMessage:Lo/c$a$c;

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
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule;->onPostMessage()Lo/b;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/b;

    return-object v0

    .line 1048
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
