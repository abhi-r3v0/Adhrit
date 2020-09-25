.class public final Lo/validateQueryEndpoints;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/validateQueryEndpoints$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/removeValue;

.field public final onMessageChannelReady:Lo/fromException;


# direct methods
.method private constructor <init>(Lo/fromException;Lo/removeValue;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/validateQueryEndpoints;->onMessageChannelReady:Lo/fromException;

    .line 41
    iput-object p2, p0, Lo/validateQueryEndpoints;->ICustomTabsCallback:Lo/removeValue;

    return-void
.end method

.method public synthetic constructor <init>(Lo/fromException;Lo/removeValue;B)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lo/validateQueryEndpoints;-><init>(Lo/fromException;Lo/removeValue;)V

    return-void
.end method

.method public static extraCallback(Lo/removeValue;Lo/fromException;)Z
    .locals 3

    .line 1088
    iget v0, p0, Lo/removeValue;->ICustomTabsCallback:I

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_5

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_5

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_5

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-eq v0, v1, :cond_5

    const/16 v1, 0x194

    if-eq v0, v1, :cond_5

    const/16 v1, 0x195

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 1121
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lo/removeValue;->asInterface:Lo/getRef;

    .line 2061
    iget-object v0, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v1, "Expires"

    invoke-static {v0, v1}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 2205
    iget-object v0, p0, Lo/removeValue;->newSession:Lo/onChildRemoved;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2206
    :cond_2
    iget-object v0, p0, Lo/removeValue;->asInterface:Lo/getRef;

    invoke-static {v0}, Lo/onChildRemoved;->onNavigationEvent(Lo/getRef;)Lo/onChildRemoved;

    move-result-object v0

    iput-object v0, p0, Lo/removeValue;->newSession:Lo/onChildRemoved;

    .line 3100
    :goto_1
    iget v0, v0, Lo/onChildRemoved;->onPostMessage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 3205
    iget-object v0, p0, Lo/removeValue;->newSession:Lo/onChildRemoved;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 3206
    :cond_3
    iget-object v0, p0, Lo/removeValue;->asInterface:Lo/getRef;

    invoke-static {v0}, Lo/onChildRemoved;->onNavigationEvent(Lo/getRef;)Lo/onChildRemoved;

    move-result-object v0

    iput-object v0, p0, Lo/removeValue;->newSession:Lo/onChildRemoved;

    .line 4117
    :goto_2
    iget-boolean v0, v0, Lo/onChildRemoved;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_5

    .line 4205
    iget-object v0, p0, Lo/removeValue;->newSession:Lo/onChildRemoved;

    if-eqz v0, :cond_4

    goto :goto_3

    .line 4206
    :cond_4
    iget-object v0, p0, Lo/removeValue;->asInterface:Lo/getRef;

    invoke-static {v0}, Lo/onChildRemoved;->onNavigationEvent(Lo/getRef;)Lo/onChildRemoved;

    move-result-object v0

    iput-object v0, p0, Lo/removeValue;->newSession:Lo/onChildRemoved;

    .line 5113
    :goto_3
    iget-boolean v0, v0, Lo/onChildRemoved;->onMessageChannelReady:Z

    if-nez v0, :cond_5

    :goto_4
    return v2

    .line 5205
    :cond_5
    :pswitch_1
    iget-object v0, p0, Lo/removeValue;->newSession:Lo/onChildRemoved;

    if-eqz v0, :cond_6

    goto :goto_5

    .line 5206
    :cond_6
    iget-object v0, p0, Lo/removeValue;->asInterface:Lo/getRef;

    invoke-static {v0}, Lo/onChildRemoved;->onNavigationEvent(Lo/getRef;)Lo/onChildRemoved;

    move-result-object v0

    iput-object v0, p0, Lo/removeValue;->newSession:Lo/onChildRemoved;

    .line 6092
    :goto_5
    iget-boolean p0, v0, Lo/onChildRemoved;->extraCallback:Z

    if-nez p0, :cond_8

    .line 6102
    iget-object p0, p1, Lo/fromException;->onTransact:Lo/onChildRemoved;

    if-eqz p0, :cond_7

    goto :goto_6

    .line 6103
    :cond_7
    iget-object p0, p1, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    invoke-static {p0}, Lo/onChildRemoved;->onNavigationEvent(Lo/getRef;)Lo/onChildRemoved;

    move-result-object p0

    iput-object p0, p1, Lo/fromException;->onTransact:Lo/onChildRemoved;

    .line 7092
    :goto_6
    iget-boolean p0, p0, Lo/onChildRemoved;->extraCallback:Z

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
