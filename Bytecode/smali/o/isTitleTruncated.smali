.class public final Lo/isTitleTruncated;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isTitleTruncated$onPostMessage;,
        Lo/isTitleTruncated$onMessageChannelReady;,
        Lo/isTitleTruncated$extraCallback;,
        Lo/isTitleTruncated$onNavigationEvent;,
        Lo/isTitleTruncated$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setNavigationContentDescription<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/isTitleTruncated$ICustomTabsCallback;
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/isTitleTruncated;->onNavigationEvent:Lo/isTitleTruncated$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 1

    .line 23
    check-cast p1, Ljava/io/File;

    .line 1037
    new-instance p2, Lo/setNavigationContentDescription$ICustomTabsCallback;

    new-instance p3, Lo/setSoftInputMode;

    invoke-direct {p3, p1}, Lo/setSoftInputMode;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lo/isTitleTruncated$onNavigationEvent;

    iget-object v0, p0, Lo/isTitleTruncated;->onNavigationEvent:Lo/isTitleTruncated$ICustomTabsCallback;

    invoke-direct {p4, p1, v0}, Lo/isTitleTruncated$onNavigationEvent;-><init>(Ljava/io/File;Lo/isTitleTruncated$ICustomTabsCallback;)V

    invoke-direct {p2, p3, p4}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V

    return-object p2
.end method

.method public final bridge synthetic onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
