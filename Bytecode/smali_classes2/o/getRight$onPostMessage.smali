.class final Lo/getRight$onPostMessage;
.super Lo/getMinKey$ICustomTabsCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Lo/getMinKey$ICustomTabsCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 336
    invoke-direct {p0}, Lo/getRight$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/getMinKey$ICustomTabsCallback;
    .locals 1

    .line 340
    invoke-static {}, Lo/getMinKey$ICustomTabsCallback;->extraCallback()Lo/getMinKey$ICustomTabsCallback;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 345
    const-class v0, Lo/getRight$onPostMessage;

    .line 1119
    new-instance v1, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 345
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
