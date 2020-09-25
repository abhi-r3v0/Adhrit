.class final Lo/Report$Type$ICustomTabsCallback;
.super Lo/Report$Type$asBinder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Report$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Report$Type<",
        "TK;TV;>.asBinder;"
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/Report$Type;


# direct methods
.method private constructor <init>(Lo/Report$Type;)V
    .locals 1

    .line 523
    iput-object p1, p0, Lo/Report$Type$ICustomTabsCallback;->onPostMessage:Lo/Report$Type;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/Report$Type$asBinder;-><init>(Lo/Report$Type;B)V

    return-void
.end method

.method synthetic constructor <init>(Lo/Report$Type;B)V
    .locals 0

    .line 523
    invoke-direct {p0, p1}, Lo/Report$Type$ICustomTabsCallback;-><init>(Lo/Report$Type;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 526
    new-instance v0, Lo/Report$Type$extraCallback;

    iget-object v1, p0, Lo/Report$Type$ICustomTabsCallback;->onPostMessage:Lo/Report$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/Report$Type$extraCallback;-><init>(Lo/Report$Type;B)V

    return-object v0
.end method
