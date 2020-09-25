.class final Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onCreateSupportNavigateUpTaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field static final onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;


# instance fields
.field ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

.field final extraCallback:Ljava/util/concurrent/Executor;

.field final onNavigationEvent:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 204
    new-instance v0, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Runnable;

    .line 214
    iput-object p2, p0, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;->extraCallback:Ljava/util/concurrent/Executor;

    return-void
.end method
