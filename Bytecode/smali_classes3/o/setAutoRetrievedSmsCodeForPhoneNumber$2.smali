.class final Lo/setAutoRetrievedSmsCodeForPhoneNumber$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAutoRetrievedSmsCodeForPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

.field private synthetic onMessageChannelReady:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lo/setAutoRetrievedSmsCodeForPhoneNumber;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$2;->extraCallback:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    iput-object p2, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$2;->onMessageChannelReady:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 344
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    .line 345
    iget-object p2, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$2;->extraCallback:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    .line 1397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p2, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->extraCallback:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-ltz p2, :cond_1

    const-wide/16 v4, 0x12c

    cmp-long p2, v2, v4

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 346
    iget-object p2, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$2;->extraCallback:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    .line 2064
    iput-boolean v1, p2, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback:Z

    .line 348
    :cond_2
    iget-object p2, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$2;->extraCallback:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    iget-object v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$2;->onMessageChannelReady:Landroid/widget/AutoCompleteTextView;

    invoke-static {p2, v0}, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onPostMessage(Lo/setAutoRetrievedSmsCodeForPhoneNumber;Landroid/widget/AutoCompleteTextView;)V

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_3
    return v1
.end method
