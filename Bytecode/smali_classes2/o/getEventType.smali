.class public final Lo/getEventType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getEventType$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/childAddedChange;

.field public final onPostMessage:Lo/isCompleteForChild;


# direct methods
.method constructor <init>(Lo/isCompleteForChild;Lo/childAddedChange;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lo/getEventType;->onPostMessage:Lo/isCompleteForChild;

    .line 59
    iput-object p2, p0, Lo/getEventType;->ICustomTabsCallback:Lo/childAddedChange;

    return-void
.end method

.method public static onMessageChannelReady(Lo/childAddedChange;Lo/isCompleteForChild;)Z
    .locals 3

    .line 1098
    iget v0, p0, Lo/childAddedChange;->onNavigationEvent:I

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

    .line 1131
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 2063
    iget-object v0, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v1, "Expires"

    invoke-static {v0, v1}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 2255
    iget-object v0, p0, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2256
    :cond_2
    iget-object v0, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    invoke-static {v0}, Lo/loadOrCreateBeanMapperForClass;->onNavigationEvent(Lo/shouldIncludeField;)Lo/loadOrCreateBeanMapperForClass;

    move-result-object v0

    iput-object v0, p0, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    .line 3099
    :goto_1
    iget v0, v0, Lo/loadOrCreateBeanMapperForClass;->onMessageChannelReady:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 3255
    iget-object v0, p0, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 3256
    :cond_3
    iget-object v0, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    invoke-static {v0}, Lo/loadOrCreateBeanMapperForClass;->onNavigationEvent(Lo/shouldIncludeField;)Lo/loadOrCreateBeanMapperForClass;

    move-result-object v0

    iput-object v0, p0, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    .line 4115
    :goto_2
    iget-boolean v0, v0, Lo/loadOrCreateBeanMapperForClass;->extraCallback:Z

    if-nez v0, :cond_5

    .line 4255
    iget-object v0, p0, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    if-eqz v0, :cond_4

    goto :goto_3

    .line 4256
    :cond_4
    iget-object v0, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    invoke-static {v0}, Lo/loadOrCreateBeanMapperForClass;->onNavigationEvent(Lo/shouldIncludeField;)Lo/loadOrCreateBeanMapperForClass;

    move-result-object v0

    iput-object v0, p0, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    .line 5111
    :goto_3
    iget-boolean v0, v0, Lo/loadOrCreateBeanMapperForClass;->onNavigationEvent:Z

    if-nez v0, :cond_5

    :goto_4
    return v2

    .line 5255
    :cond_5
    :pswitch_1
    iget-object v0, p0, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    if-eqz v0, :cond_6

    goto :goto_5

    .line 5256
    :cond_6
    iget-object v0, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    invoke-static {v0}, Lo/loadOrCreateBeanMapperForClass;->onNavigationEvent(Lo/shouldIncludeField;)Lo/loadOrCreateBeanMapperForClass;

    move-result-object v0

    iput-object v0, p0, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    .line 6092
    :goto_5
    iget-boolean p0, v0, Lo/loadOrCreateBeanMapperForClass;->ICustomTabsCallback:Z

    if-nez p0, :cond_8

    .line 6101
    iget-object p0, p1, Lo/isCompleteForChild;->asInterface:Lo/loadOrCreateBeanMapperForClass;

    if-eqz p0, :cond_7

    goto :goto_6

    .line 6102
    :cond_7
    iget-object p0, p1, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    invoke-static {p0}, Lo/loadOrCreateBeanMapperForClass;->onNavigationEvent(Lo/shouldIncludeField;)Lo/loadOrCreateBeanMapperForClass;

    move-result-object p0

    iput-object p0, p1, Lo/isCompleteForChild;->asInterface:Lo/loadOrCreateBeanMapperForClass;

    .line 7092
    :goto_6
    iget-boolean p0, p0, Lo/loadOrCreateBeanMapperForClass;->ICustomTabsCallback:Z

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
