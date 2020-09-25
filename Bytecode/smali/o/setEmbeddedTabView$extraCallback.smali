.class public final Lo/setEmbeddedTabView$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCustomView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setEmbeddedTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getCustomView<",
        "[B",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/getVisibility;)Lo/setNavigationContentDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVisibility;",
            ")",
            "Lo/setNavigationContentDescription<",
            "[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance p1, Lo/setEmbeddedTabView;

    new-instance v0, Lo/setEmbeddedTabView$extraCallback$4;

    invoke-direct {v0}, Lo/setEmbeddedTabView$extraCallback$4;-><init>()V

    invoke-direct {p1, v0}, Lo/setEmbeddedTabView;-><init>(Lo/setEmbeddedTabView$ICustomTabsCallback;)V

    return-object p1
.end method
