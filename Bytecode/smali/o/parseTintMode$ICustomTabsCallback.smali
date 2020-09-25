.class public final Lo/parseTintMode$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCustomView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/parseTintMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getCustomView<",
        "Ljava/net/URL;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/getVisibility;)Lo/setNavigationContentDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVisibility;",
            ")",
            "Lo/setNavigationContentDescription<",
            "Ljava/net/URL;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lo/parseTintMode;

    const-class v1, Lo/setCollapsible;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lo/getVisibility;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;)Lo/setNavigationContentDescription;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/parseTintMode;-><init>(Lo/setNavigationContentDescription;)V

    return-object v0
.end method
