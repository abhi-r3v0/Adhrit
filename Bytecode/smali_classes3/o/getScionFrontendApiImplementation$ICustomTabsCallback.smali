.class final Lo/getScionFrontendApiImplementation$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getScionFrontendApiImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getScionFrontendApiImplementation;


# direct methods
.method private constructor <init>(Lo/getScionFrontendApiImplementation;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lo/getScionFrontendApiImplementation$ICustomTabsCallback;->onMessageChannelReady:Lo/getScionFrontendApiImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getScionFrontendApiImplementation;B)V
    .locals 0

    .line 411
    invoke-direct {p0, p1}, Lo/getScionFrontendApiImplementation$ICustomTabsCallback;-><init>(Lo/getScionFrontendApiImplementation;)V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 415
    iget-object v0, p0, Lo/getScionFrontendApiImplementation$ICustomTabsCallback;->onMessageChannelReady:Lo/getScionFrontendApiImplementation;

    .line 1050
    iget-boolean v0, v0, Lo/getScionFrontendApiImplementation;->onPostMessage:Z

    if-eqz v0, :cond_0

    return-void

    .line 419
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eqz p2, :cond_2

    .line 422
    iget-object p2, p0, Lo/getScionFrontendApiImplementation$ICustomTabsCallback;->onMessageChannelReady:Lo/getScionFrontendApiImplementation;

    .line 2050
    iget p2, p2, Lo/getScionFrontendApiImplementation;->extraCallback:I

    if-eq p2, v0, :cond_1

    .line 422
    iget-object p2, p0, Lo/getScionFrontendApiImplementation$ICustomTabsCallback;->onMessageChannelReady:Lo/getScionFrontendApiImplementation;

    .line 3050
    iget p2, p2, Lo/getScionFrontendApiImplementation;->extraCallback:I

    if-eq p2, p1, :cond_1

    .line 422
    iget-object p2, p0, Lo/getScionFrontendApiImplementation$ICustomTabsCallback;->onMessageChannelReady:Lo/getScionFrontendApiImplementation;

    .line 4050
    iget-boolean p2, p2, Lo/getScionFrontendApiImplementation;->ICustomTabsCallback:Z

    if-eqz p2, :cond_1

    .line 423
    iget-object p2, p0, Lo/getScionFrontendApiImplementation$ICustomTabsCallback;->onMessageChannelReady:Lo/getScionFrontendApiImplementation;

    .line 5050
    iget v0, p2, Lo/getScionFrontendApiImplementation;->extraCallback:I

    .line 6306
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6307
    instance-of v1, v0, Lo/getComponents;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 6308
    iput-boolean v1, p2, Lo/getScionFrontendApiImplementation;->onPostMessage:Z

    .line 6309
    check-cast v0, Lo/getComponents;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 6310
    iput-boolean v1, p2, Lo/getScionFrontendApiImplementation;->onPostMessage:Z

    .line 425
    :cond_1
    iget-object p2, p0, Lo/getScionFrontendApiImplementation$ICustomTabsCallback;->onMessageChannelReady:Lo/getScionFrontendApiImplementation;

    .line 7298
    iput p1, p2, Lo/getScionFrontendApiImplementation;->extraCallback:I

    return-void

    .line 427
    :cond_2
    iget-object p2, p0, Lo/getScionFrontendApiImplementation$ICustomTabsCallback;->onMessageChannelReady:Lo/getScionFrontendApiImplementation;

    .line 8050
    iget p2, p2, Lo/getScionFrontendApiImplementation;->extraCallback:I

    if-ne p2, p1, :cond_3

    .line 428
    iget-object p1, p0, Lo/getScionFrontendApiImplementation$ICustomTabsCallback;->onMessageChannelReady:Lo/getScionFrontendApiImplementation;

    .line 9298
    iput v0, p1, Lo/getScionFrontendApiImplementation;->extraCallback:I

    :cond_3
    return-void
.end method
