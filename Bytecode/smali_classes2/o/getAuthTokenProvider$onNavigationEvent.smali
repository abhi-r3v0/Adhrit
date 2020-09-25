.class final Lo/getAuthTokenProvider$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onNodeValue$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAuthTokenProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onNodeValue$extraCallback<",
        "[B>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lo/getAuthTokenProvider$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback([B)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final bridge synthetic ICustomTabsCallback(Ljava/lang/Object;)[B
    .locals 0

    .line 106
    check-cast p1, [B

    return-object p1
.end method
