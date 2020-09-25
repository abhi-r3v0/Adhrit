.class public final Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CreateOneLinkHttpTask$ResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:Ljava/net/URL;

.field public final onPostMessage:Lo/CreateOneLinkHttpTask;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lo/CreateOneLinkHttpTask;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;->onMessageChannelReady:Ljava/net/URL;

    .line 3
    iput-object p2, p0, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;->onPostMessage:Lo/CreateOneLinkHttpTask;

    .line 4
    iput-object p3, p0, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    return-void
.end method
