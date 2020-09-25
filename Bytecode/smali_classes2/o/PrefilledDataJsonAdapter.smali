.class final Lo/PrefilledDataJsonAdapter;
.super Ljava/lang/Object;


# static fields
.field private static final extraCallback:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ScreenCommonData;

    invoke-direct {v0}, Lo/ScreenCommonData;-><init>()V

    sput-object v0, Lo/PrefilledDataJsonAdapter;->onPostMessage:Ljava/util/Iterator;

    new-instance v0, Lo/ResetExtra;

    invoke-direct {v0}, Lo/ResetExtra;-><init>()V

    sput-object v0, Lo/PrefilledDataJsonAdapter;->extraCallback:Ljava/lang/Iterable;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lo/PrefilledDataJsonAdapter;->onPostMessage:Ljava/util/Iterator;

    return-object v0
.end method

.method static onPostMessage()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lo/PrefilledDataJsonAdapter;->extraCallback:Ljava/lang/Iterable;

    return-object v0
.end method
