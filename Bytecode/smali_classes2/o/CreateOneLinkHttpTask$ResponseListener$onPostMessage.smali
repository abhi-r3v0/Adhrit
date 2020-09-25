.class public final Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CreateOneLinkHttpTask$ResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field final ICustomTabsCallback:J

.field final onNavigationEvent:I

.field public final onPostMessage:Ljava/net/URL;


# direct methods
.method constructor <init>(ILjava/net/URL;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;->onNavigationEvent:I

    .line 3
    iput-object p2, p0, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;->onPostMessage:Ljava/net/URL;

    .line 4
    iput-wide p3, p0, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;->ICustomTabsCallback:J

    return-void
.end method
