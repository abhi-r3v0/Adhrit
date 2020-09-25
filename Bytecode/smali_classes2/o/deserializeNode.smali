.class public final Lo/deserializeNode;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onNavigationEvent:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Lo/emptyMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget-object v0, Lo/emptyMap;->newSession:Lo/getPredecessorKey$ICustomTabsCallback;

    sput-object v0, Lo/deserializeNode;->onPostMessage:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 36
    sget-object v0, Lo/emptyMap;->asInterface:Lo/getPredecessorKey$ICustomTabsCallback;

    sput-object v0, Lo/deserializeNode;->onNavigationEvent:Lo/getPredecessorKey$ICustomTabsCallback;

    return-void
.end method
