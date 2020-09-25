.class final Lo/onCreateSupportNavigateUpTaskStack$asBinder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onCreateSupportNavigateUpTaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "asBinder"
.end annotation


# static fields
.field static final extraCallback:Lo/onCreateSupportNavigateUpTaskStack$asBinder;


# instance fields
.field volatile ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

.field volatile onMessageChannelReady:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 124
    new-instance v0, Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/onCreateSupportNavigateUpTaskStack$asBinder;-><init>(B)V

    sput-object v0, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->extraCallback:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    sget-object v0, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->ICustomTabsCallback(Lo/onCreateSupportNavigateUpTaskStack$asBinder;Ljava/lang/Thread;)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
