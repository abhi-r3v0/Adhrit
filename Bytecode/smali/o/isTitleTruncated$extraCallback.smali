.class public Lo/isTitleTruncated$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCustomView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isTitleTruncated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getCustomView<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/isTitleTruncated$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isTitleTruncated$ICustomTabsCallback<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/isTitleTruncated$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isTitleTruncated$ICustomTabsCallback<",
            "TData;>;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lo/isTitleTruncated$extraCallback;->onPostMessage:Lo/isTitleTruncated$ICustomTabsCallback;

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
            "Ljava/io/File;",
            "TData;>;"
        }
    .end annotation

    .line 126
    new-instance p1, Lo/isTitleTruncated;

    iget-object v0, p0, Lo/isTitleTruncated$extraCallback;->onPostMessage:Lo/isTitleTruncated$ICustomTabsCallback;

    invoke-direct {p1, v0}, Lo/isTitleTruncated;-><init>(Lo/isTitleTruncated$ICustomTabsCallback;)V

    return-object p1
.end method
