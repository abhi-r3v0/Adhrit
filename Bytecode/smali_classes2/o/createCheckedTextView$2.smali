.class final Lo/createCheckedTextView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCheckedTextView$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createCheckedTextView;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Z

.field private synthetic onPostMessage:Lo/createCheckedTextView;


# direct methods
.method constructor <init>(Lo/createCheckedTextView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 616
    iput-object p1, p0, Lo/createCheckedTextView$2;->onPostMessage:Lo/createCheckedTextView;

    iput-object p2, p0, Lo/createCheckedTextView$2;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/createCheckedTextView$2;->ICustomTabsCallback:Ljava/lang/String;

    iput-boolean p4, p0, Lo/createCheckedTextView$2;->onMessageChannelReady:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 4

    .line 619
    iget-object v0, p0, Lo/createCheckedTextView$2;->onPostMessage:Lo/createCheckedTextView;

    iget-object v1, p0, Lo/createCheckedTextView$2;->extraCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/createCheckedTextView$2;->ICustomTabsCallback:Ljava/lang/String;

    iget-boolean v3, p0, Lo/createCheckedTextView$2;->onMessageChannelReady:Z

    invoke-virtual {v0, v1, v2, v3}, Lo/createCheckedTextView;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
