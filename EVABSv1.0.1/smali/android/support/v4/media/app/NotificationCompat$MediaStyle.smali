.class public Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# static fields
.field private static final MAX_MEDIA_BUTTONS:I = 0x5

.field private static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# instance fields
.field mActionsToShowInCompact:[I

.field mCancelButtonIntent:Landroid/app/PendingIntent;

.field mShowCancelButton:Z

.field mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    .line 138
    invoke-virtual {p0, p1}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-void
.end method

.method private generateMediaActionButton(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .locals 4

    .line 279
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 280
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/support/mediacompat/R$layout;->notification_media_action:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 282
    sget v2, Landroid/support/mediacompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-nez v0, :cond_1

    .line 284
    sget v0, Landroid/support/mediacompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 286
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_2

    .line 287
    sget v0, Landroid/support/mediacompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_2
    return-object v1
.end method

.method public static getMediaSession(Landroid/app/Notification;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 2

    .line 101
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "android.mediaSession"

    .line 104
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 107
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "android.mediaSession"

    .line 110
    invoke-static {p0, v0}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p0, 0x0

    .line 115
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 116
    sget-object p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 117
    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 210
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 211
    invoke-virtual {p0, v0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->fillInMediaStyle(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    .line 210
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 212
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    if-eqz v0, :cond_1

    .line 213
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    :cond_1
    :goto_0
    return-void
.end method

.method fillInMediaStyle(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 219
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 222
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    :cond_1
    return-object p1
.end method

.method generateBigContentView()Landroid/widget/RemoteViews;
    .locals 6

    .line 310
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 312
    invoke-virtual {p0, v0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->getBigContentViewLayoutResource(I)I

    move-result v1

    const/4 v2, 0x0

    .line 311
    invoke-virtual {p0, v2, v1, v2}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 314
    sget v3, Landroid/support/mediacompat/R$id;->media_actions:I

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v0, :cond_0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 317
    iget-object v4, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-direct {p0, v4}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->generateMediaActionButton(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 318
    sget v5, Landroid/support/mediacompat/R$id;->media_actions:I

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    if-eqz v0, :cond_1

    .line 322
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 323
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    const-string v2, "setAlpha"

    iget-object v3, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 324
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/mediacompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 323
    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 325
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    iget-object v2, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 327
    :cond_1
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    return-object v1
.end method

.method generateContentView()Landroid/widget/RemoteViews;
    .locals 8

    .line 243
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->getContentViewLayoutResource()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    invoke-virtual {p0, v2, v0, v1}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 245
    iget-object v3, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 246
    iget-object v4, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    array-length v4, v4

    const/4 v5, 0x3

    .line 248
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 249
    :goto_0
    sget v5, Landroid/support/mediacompat/R$id;->media_actions:I

    invoke-virtual {v0, v5}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v4, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    if-lt v5, v3, :cond_1

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 255
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    .line 253
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    iget-object v6, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    aget v7, v7, v5

    .line 259
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/NotificationCompat$Action;

    .line 260
    invoke-direct {p0, v6}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->generateMediaActionButton(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 261
    sget v7, Landroid/support/mediacompat/R$id;->media_actions:I

    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 264
    :cond_2
    iget-boolean v1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    .line 265
    sget v1, Landroid/support/mediacompat/R$id;->end_padder:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 266
    sget v1, Landroid/support/mediacompat/R$id;->cancel_action:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 267
    sget v1, Landroid/support/mediacompat/R$id;->cancel_action:I

    iget-object v2, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 268
    sget v1, Landroid/support/mediacompat/R$id;->cancel_action:I

    const-string v2, "setAlpha"

    iget-object v3, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 269
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/mediacompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 268
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_2

    .line 271
    :cond_3
    sget v1, Landroid/support/mediacompat/R$id;->end_padder:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 272
    sget v1, Landroid/support/mediacompat/R$id;->cancel_action:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    return-object v0
.end method

.method getBigContentViewLayoutResource(I)I
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 333
    sget p1, Landroid/support/mediacompat/R$layout;->notification_template_big_media_narrow:I

    goto :goto_0

    :cond_0
    sget p1, Landroid/support/mediacompat/R$layout;->notification_template_big_media:I

    :goto_0
    return p1
.end method

.method getContentViewLayoutResource()I
    .locals 1

    .line 293
    sget v0, Landroid/support/mediacompat/R$layout;->notification_template_media:I

    return v0
.end method

.method public makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 302
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 306
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->generateBigContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 234
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->generateContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public setCancelButtonIntent(Landroid/app/PendingIntent;)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
    .locals 0

    .line 199
    iput-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
    .locals 0

    .line 157
    iput-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
    .locals 0

    .line 148
    iput-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    return-object p0
.end method

.method public setShowCancelButton(Z)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
    .locals 2

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 187
    iput-boolean p1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    :cond_0
    return-object p0
.end method
