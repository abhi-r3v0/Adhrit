.class public Lo/setSubtitle$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSubtitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:I

.field private asBinder:Z

.field private final asInterface:[Lo/setMediaUri;

.field public extraCallback:Landroid/app/PendingIntent;

.field private final getInterfaceDescriptor:Z

.field onMessageChannelReady:Z

.field final onNavigationEvent:Landroid/os/Bundle;

.field public onPostMessage:Ljava/lang/CharSequence;

.field private final onRelationshipValidationResult:[Lo/setMediaUri;

.field private onTransact:Landroidx/core/graphics/drawable/IconCompat;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3303
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->onMessageChannelReady(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lo/setSubtitle$extraCallback;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 11

    .line 3312
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Lo/setSubtitle$extraCallback;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lo/setMediaUri;[Lo/setMediaUri;ZIZZ)V

    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lo/setMediaUri;[Lo/setMediaUri;ZIZZ)V
    .locals 2

    .line 3331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3280
    iput-boolean v0, p0, Lo/setSubtitle$extraCallback;->onMessageChannelReady:Z

    .line 3332
    iput-object p1, p0, Lo/setSubtitle$extraCallback;->onTransact:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_0

    .line 3333
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->onPostMessage()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3334
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->onNavigationEvent()I

    move-result p1

    iput p1, p0, Lo/setSubtitle$extraCallback;->ICustomTabsCallback:I

    .line 3336
    :cond_0
    invoke-static {p2}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/setSubtitle$extraCallback;->onPostMessage:Ljava/lang/CharSequence;

    .line 3337
    iput-object p3, p0, Lo/setSubtitle$extraCallback;->extraCallback:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1

    goto :goto_0

    .line 3338
    :cond_1
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p4, p0, Lo/setSubtitle$extraCallback;->onNavigationEvent:Landroid/os/Bundle;

    .line 3339
    iput-object p5, p0, Lo/setSubtitle$extraCallback;->asInterface:[Lo/setMediaUri;

    .line 3340
    iput-object p6, p0, Lo/setSubtitle$extraCallback;->onRelationshipValidationResult:[Lo/setMediaUri;

    .line 3341
    iput-boolean p7, p0, Lo/setSubtitle$extraCallback;->asBinder:Z

    .line 3342
    iput p8, p0, Lo/setSubtitle$extraCallback;->ICustomTabsCallback$Stub:I

    .line 3343
    iput-boolean p9, p0, Lo/setSubtitle$extraCallback;->onMessageChannelReady:Z

    .line 3344
    iput-boolean p10, p0, Lo/setSubtitle$extraCallback;->getInterfaceDescriptor:Z

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()Z
    .locals 1

    .line 3387
    iget-boolean v0, p0, Lo/setSubtitle$extraCallback;->asBinder:Z

    return v0
.end method

.method public ICustomTabsCallback$Stub()I
    .locals 1

    .line 3407
    iget v0, p0, Lo/setSubtitle$extraCallback;->ICustomTabsCallback$Stub:I

    return v0
.end method

.method public asBinder()Z
    .locals 1

    .line 3438
    iget-boolean v0, p0, Lo/setSubtitle$extraCallback;->onMessageChannelReady:Z

    return v0
.end method

.method public asInterface()[Lo/setMediaUri;
    .locals 1

    .line 3430
    iget-object v0, p0, Lo/setSubtitle$extraCallback;->onRelationshipValidationResult:[Lo/setMediaUri;

    return-object v0
.end method

.method public extraCallback()Ljava/lang/CharSequence;
    .locals 1

    .line 3368
    iget-object v0, p0, Lo/setSubtitle$extraCallback;->onPostMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onMessageChannelReady()Landroid/app/PendingIntent;
    .locals 1

    .line 3372
    iget-object v0, p0, Lo/setSubtitle$extraCallback;->extraCallback:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public onNavigationEvent()Landroid/os/Bundle;
    .locals 1

    .line 3379
    iget-object v0, p0, Lo/setSubtitle$extraCallback;->onNavigationEvent:Landroid/os/Bundle;

    return-object v0
.end method

.method public onPostMessage()Landroidx/core/graphics/drawable/IconCompat;
    .locals 3

    .line 3361
    iget-object v0, p0, Lo/setSubtitle$extraCallback;->onTransact:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Lo/setSubtitle$extraCallback;->ICustomTabsCallback:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, ""

    .line 3362
    invoke-static {v1, v2, v0}, Landroidx/core/graphics/drawable/IconCompat;->onMessageChannelReady(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Lo/setSubtitle$extraCallback;->onTransact:Landroidx/core/graphics/drawable/IconCompat;

    .line 3364
    :cond_0
    iget-object v0, p0, Lo/setSubtitle$extraCallback;->onTransact:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public onRelationshipValidationResult()[Lo/setMediaUri;
    .locals 1

    .line 3396
    iget-object v0, p0, Lo/setSubtitle$extraCallback;->asInterface:[Lo/setMediaUri;

    return-object v0
.end method

.method public onTransact()Z
    .locals 1

    .line 3416
    iget-boolean v0, p0, Lo/setSubtitle$extraCallback;->getInterfaceDescriptor:Z

    return v0
.end method
