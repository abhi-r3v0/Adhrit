.class Landroid/support/v4/app/NotificationCompat$NotificationCompatApi16Impl;
.super Landroid/support/v4/app/NotificationCompat$NotificationCompatBaseImpl;
.source "NotificationCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatApi16Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 727
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;
    .locals 35

    move-object/from16 v0, p1

    .line 730
    new-instance v15, Landroid/support/v4/app/NotificationCompatJellybean$Builder;

    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    iget v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iget-object v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iget v12, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    iget v13, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    iget-boolean v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    iget-boolean v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    move/from16 v25, v14

    iget v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    move/from16 v26, v14

    iget-object v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v27, v14

    iget-boolean v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    move/from16 v28, v14

    iget-object v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v29, v14

    iget-object v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    move-object/from16 v30, v14

    iget-boolean v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    move/from16 v31, v14

    iget-object v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    move-object/from16 v32, v14

    iget-object v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    move-object/from16 v33, v14

    iget-object v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    move/from16 v16, v1

    move-object v1, v15

    move/from16 v17, v26

    move-object/from16 v18, v27

    move/from16 v19, v28

    move-object/from16 v20, v29

    move-object/from16 v21, v30

    move/from16 v22, v31

    move-object/from16 v23, v32

    move-object/from16 v24, v33

    move-object/from16 v26, v14

    move/from16 v14, v25

    move-object/from16 v34, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v26

    invoke-direct/range {v1 .. v24}, Landroid/support/v4/app/NotificationCompatJellybean$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 736
    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move-object/from16 v2, v34

    invoke-static {v2, v1}, Landroid/support/v4/app/NotificationCompat;->addActionsToBuilder(Landroid/support/v4/app/NotificationBuilderWithActions;Ljava/util/ArrayList;)V

    .line 737
    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Style;->apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V

    :cond_0
    move-object/from16 v1, p2

    .line 740
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;->build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;

    move-result-object v1

    .line 741
    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz v2, :cond_1

    .line 742
    invoke-static {v1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 744
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    :cond_1
    return-object v1
.end method

.method public getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 2

    .line 752
    sget-object v0, Landroid/support/v4/app/NotificationCompat$Action;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;

    sget-object v1, Landroid/support/v4/app/RemoteInput;->FACTORY:Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    invoke-static {p1, p2, v0, v1}, Landroid/support/v4/app/NotificationCompatJellybean;->getAction(Landroid/app/Notification;ILandroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/NotificationCompat$Action;

    return-object p1
.end method

.method public getActionsFromParcelableArrayList(Ljava/util/ArrayList;)[Landroid/support/v4/app/NotificationCompat$Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Parcelable;",
            ">;)[",
            "Landroid/support/v4/app/NotificationCompat$Action;"
        }
    .end annotation

    .line 759
    sget-object v0, Landroid/support/v4/app/NotificationCompat$Action;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;

    sget-object v1, Landroid/support/v4/app/RemoteInput;->FACTORY:Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionsFromParcelableArrayList(Ljava/util/ArrayList;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object p1

    check-cast p1, [Landroid/support/v4/app/NotificationCompat$Action;

    return-object p1
.end method

.method public getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompat$Action;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .line 766
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatJellybean;->getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompatBase$Action;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
