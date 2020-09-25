.class public final Lo/Account$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Account$extraCallback$extraCallback;
    }
.end annotation


# instance fields
.field public final extraCallback:I

.field private final onMessageChannelReady:J

.field public final onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

.field private final onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo/Account$extraCallback$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 306
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo/Account$extraCallback;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILo/InstrumentsCompleteJsonAdapter$extraCallback;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILo/InstrumentsCompleteJsonAdapter$extraCallback;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo/Account$extraCallback$extraCallback;",
            ">;I",
            "Lo/InstrumentsCompleteJsonAdapter$extraCallback;",
            "J)V"
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lo/Account$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 319
    iput p2, p0, Lo/Account$extraCallback;->extraCallback:I

    .line 320
    iput-object p3, p0, Lo/Account$extraCallback;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 321
    iput-wide p4, p0, Lo/Account$extraCallback;->onMessageChannelReady:J

    return-void
.end method

.method private onMessageChannelReady(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 722
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 723
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 725
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onNavigationEvent(J)J
    .locals 3

    .line 717
    invoke-static {p1, p2}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 718
    :cond_0
    iget-wide v0, p0, Lo/Account$extraCallback;->onMessageChannelReady:J

    add-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 5

    .line 377
    iget-object v0, p0, Lo/Account$extraCallback;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 378
    iget-object v1, p0, Lo/Account$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Account$extraCallback$extraCallback;

    .line 379
    iget-object v3, v2, Lo/Account$extraCallback$extraCallback;->ICustomTabsCallback:Lo/Account;

    .line 380
    iget-object v2, v2, Lo/Account$extraCallback$extraCallback;->onNavigationEvent:Landroid/os/Handler;

    new-instance v4, Lo/PaymentModeCompleteJsonAdapter;

    invoke-direct {v4, p0, v3, v0}, Lo/PaymentModeCompleteJsonAdapter;-><init>(Lo/Account$extraCallback;Lo/Account;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    invoke-direct {p0, v2, v4}, Lo/Account$extraCallback;->onMessageChannelReady(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final synthetic ICustomTabsCallback(Lo/Account;Lo/Account$ICustomTabsCallback;)V
    .locals 2

    .line 712
    iget v0, p0, Lo/Account$extraCallback;->extraCallback:I

    iget-object v1, p0, Lo/Account$extraCallback;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-interface {p1, v0, v1, p2}, Lo/Account;->onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$ICustomTabsCallback;)V

    return-void
.end method

.method final synthetic ICustomTabsCallback(Lo/Account;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
    .locals 2

    .line 435
    iget v0, p0, Lo/Account$extraCallback;->extraCallback:I

    iget-object v1, p0, Lo/Account$extraCallback;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-interface {p1, v0, v1, p2, p3}, Lo/Account;->ICustomTabsCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    return-void
.end method

.method final synthetic ICustomTabsCallback(Lo/Account;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 1

    .line 660
    iget v0, p0, Lo/Account$extraCallback;->extraCallback:I

    invoke-interface {p1, v0, p2}, Lo/Account;->ICustomTabsCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;IILo/p$a;ILjava/lang/Object;JJJ)V
    .locals 22

    move-object/from16 v0, p0

    .line 411
    new-instance v11, Lo/Account$onMessageChannelReady;

    move-object/from16 v2, p1

    iget-object v3, v2, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    .line 415
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v1, v11

    move-wide/from16 v5, p11

    invoke-direct/range {v1 .. v10}, Lo/Account$onMessageChannelReady;-><init>(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Lo/Account$ICustomTabsCallback;

    move-wide/from16 v2, p7

    .line 425
    invoke-direct {v0, v2, v3}, Lo/Account$extraCallback;->onNavigationEvent(J)J

    move-result-wide v18

    move-wide/from16 v2, p9

    .line 426
    invoke-direct {v0, v2, v3}, Lo/Account$extraCallback;->onNavigationEvent(J)J

    move-result-wide v20

    move-object v12, v1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v12 .. v21}, Lo/Account$ICustomTabsCallback;-><init>(IILo/p$a;ILjava/lang/Object;JJ)V

    .line 411
    invoke-virtual {v0, v11, v1}, Lo/Account$extraCallback;->onMessageChannelReady(Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IJJJ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PaymentRequestJsonAdapter;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IJJJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 448
    invoke-virtual/range {v0 .. v18}, Lo/Account$extraCallback;->onNavigationEvent(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IILo/p$a;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public final extraCallback(Lo/Account$ICustomTabsCallback;)V
    .locals 4

    .line 708
    iget-object v0, p0, Lo/Account$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Account$extraCallback$extraCallback;

    .line 709
    iget-object v2, v1, Lo/Account$extraCallback$extraCallback;->ICustomTabsCallback:Lo/Account;

    .line 710
    iget-object v1, v1, Lo/Account$extraCallback$extraCallback;->onNavigationEvent:Landroid/os/Handler;

    new-instance v3, Lo/CardBinDetailsJsonAdapter;

    invoke-direct {v3, p0, v2, p1}, Lo/CardBinDetailsJsonAdapter;-><init>(Lo/Account$extraCallback;Lo/Account;Lo/Account$ICustomTabsCallback;)V

    invoke-direct {p0, v1, v3}, Lo/Account$extraCallback;->onMessageChannelReady(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
    .locals 4

    .line 558
    iget-object v0, p0, Lo/Account$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Account$extraCallback$extraCallback;

    .line 559
    iget-object v2, v1, Lo/Account$extraCallback$extraCallback;->ICustomTabsCallback:Lo/Account;

    .line 560
    iget-object v1, v1, Lo/Account$extraCallback$extraCallback;->onNavigationEvent:Landroid/os/Handler;

    new-instance v3, Lo/CardBinDetails;

    invoke-direct {v3, p0, v2, p1, p2}, Lo/CardBinDetails;-><init>(Lo/Account$extraCallback;Lo/Account;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    invoke-direct {p0, v1, v3}, Lo/Account$extraCallback;->onMessageChannelReady(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final synthetic extraCallback(Lo/Account;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
    .locals 2

    .line 563
    iget v0, p0, Lo/Account$extraCallback;->extraCallback:I

    iget-object v1, p0, Lo/Account$extraCallback;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-interface {p1, v0, v1, p2, p3}, Lo/Account;->onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    return-void
.end method

.method final synthetic extraCallback(Lo/Account;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 1

    .line 371
    iget v0, p0, Lo/Account$extraCallback;->extraCallback:I

    invoke-interface {p1, v0, p2}, Lo/Account;->onMessageChannelReady(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    return-void
.end method

.method public final extraCallback(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IILo/p$a;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PaymentRequestJsonAdapter;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Lo/p$a;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ",
            "Ljava/io/IOException;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 619
    new-instance v11, Lo/Account$onMessageChannelReady;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Lo/Account$onMessageChannelReady;-><init>(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Lo/Account$ICustomTabsCallback;

    move-wide/from16 v2, p9

    .line 628
    invoke-direct {p0, v2, v3}, Lo/Account$extraCallback;->onNavigationEvent(J)J

    move-result-wide v2

    move-wide/from16 v4, p11

    .line 629
    invoke-direct {p0, v4, v5}, Lo/Account$extraCallback;->onNavigationEvent(J)J

    move-result-wide v4

    move-object/from16 p9, v1

    move/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move/from16 p13, p7

    move-object/from16 p14, p8

    move-wide/from16 p15, v2

    move-wide/from16 p17, v4

    invoke-direct/range {p9 .. p18}, Lo/Account$ICustomTabsCallback;-><init>(IILo/p$a;ILjava/lang/Object;JJ)V

    move-object/from16 v2, p19

    move/from16 v3, p20

    .line 619
    invoke-virtual {p0, v11, v1, v2, v3}, Lo/Account$extraCallback;->onPostMessage(Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final extraCallback(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IJJJ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PaymentRequestJsonAdapter;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IJJJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 512
    invoke-virtual/range {v0 .. v18}, Lo/Account$extraCallback;->onPostMessage(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IILo/p$a;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
    .locals 4

    .line 431
    iget-object v0, p0, Lo/Account$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Account$extraCallback$extraCallback;

    .line 432
    iget-object v2, v1, Lo/Account$extraCallback$extraCallback;->ICustomTabsCallback:Lo/Account;

    .line 433
    iget-object v1, v1, Lo/Account$extraCallback$extraCallback;->onNavigationEvent:Landroid/os/Handler;

    new-instance v3, Lo/PaymentModeComplete;

    invoke-direct {v3, p0, v2, p1, p2}, Lo/PaymentModeComplete;-><init>(Lo/Account$extraCallback;Lo/Account;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    invoke-direct {p0, v1, v3}, Lo/Account$extraCallback;->onMessageChannelReady(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PaymentRequestJsonAdapter;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IJJJ",
            "Ljava/io/IOException;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    move-object/from16 v19, p11

    move/from16 v20, p12

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 581
    invoke-virtual/range {v0 .. v20}, Lo/Account$extraCallback;->extraCallback(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IILo/p$a;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 5

    .line 366
    iget-object v0, p0, Lo/Account$extraCallback;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 367
    iget-object v1, p0, Lo/Account$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Account$extraCallback$extraCallback;

    .line 368
    iget-object v3, v2, Lo/Account$extraCallback$extraCallback;->ICustomTabsCallback:Lo/Account;

    .line 369
    iget-object v2, v2, Lo/Account$extraCallback$extraCallback;->onNavigationEvent:Landroid/os/Handler;

    new-instance v4, Lo/fromJson;

    invoke-direct {v4, p0, v3, v0}, Lo/fromJson;-><init>(Lo/Account$extraCallback;Lo/Account;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    invoke-direct {p0, v2, v4}, Lo/Account$extraCallback;->onMessageChannelReady(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Landroid/os/Handler;Lo/Account;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 347
    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 348
    iget-object v0, p0, Lo/Account$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lo/Account$extraCallback$extraCallback;

    invoke-direct {v1, p1, p2}, Lo/Account$extraCallback$extraCallback;-><init>(Landroid/os/Handler;Lo/Account;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onNavigationEvent(Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
    .locals 4

    .line 494
    iget-object v0, p0, Lo/Account$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Account$extraCallback$extraCallback;

    .line 495
    iget-object v2, v1, Lo/Account$extraCallback$extraCallback;->ICustomTabsCallback:Lo/Account;

    .line 496
    iget-object v1, v1, Lo/Account$extraCallback$extraCallback;->onNavigationEvent:Landroid/os/Handler;

    new-instance v3, Lo/AccountJsonAdapter;

    invoke-direct {v3, p0, v2, p1, p2}, Lo/AccountJsonAdapter;-><init>(Lo/Account$extraCallback;Lo/Account;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    invoke-direct {p0, v1, v3}, Lo/Account$extraCallback;->onMessageChannelReady(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final synthetic onNavigationEvent(Lo/Account;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 1

    .line 382
    iget v0, p0, Lo/Account$extraCallback;->extraCallback:I

    invoke-interface {p1, v0, p2}, Lo/Account;->onNavigationEvent(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IILo/p$a;ILjava/lang/Object;JJJJJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PaymentRequestJsonAdapter;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Lo/p$a;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 479
    new-instance v11, Lo/Account$onMessageChannelReady;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Lo/Account$onMessageChannelReady;-><init>(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Lo/Account$ICustomTabsCallback;

    move-wide/from16 v2, p9

    .line 488
    invoke-direct {p0, v2, v3}, Lo/Account$extraCallback;->onNavigationEvent(J)J

    move-result-wide v2

    move-wide/from16 v4, p11

    .line 489
    invoke-direct {p0, v4, v5}, Lo/Account$extraCallback;->onNavigationEvent(J)J

    move-result-wide v4

    move-object/from16 p9, v1

    move/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move/from16 p13, p7

    move-object/from16 p14, p8

    move-wide/from16 p15, v2

    move-wide/from16 p17, v4

    invoke-direct/range {p9 .. p18}, Lo/Account$ICustomTabsCallback;-><init>(IILo/p$a;ILjava/lang/Object;JJ)V

    .line 479
    invoke-virtual {p0, v11, v1}, Lo/Account$extraCallback;->onNavigationEvent(Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    return-void
.end method

.method public final onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;J)Lo/Account$extraCallback;
    .locals 7

    .line 336
    new-instance v6, Lo/Account$extraCallback;

    iget-object v1, p0, Lo/Account$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lo/Account$extraCallback;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILo/InstrumentsCompleteJsonAdapter$extraCallback;J)V

    return-object v6
.end method

.method public final onPostMessage()V
    .locals 5

    .line 655
    iget-object v0, p0, Lo/Account$extraCallback;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 656
    iget-object v1, p0, Lo/Account$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Account$extraCallback$extraCallback;

    .line 657
    iget-object v3, v2, Lo/Account$extraCallback$extraCallback;->ICustomTabsCallback:Lo/Account;

    .line 658
    iget-object v2, v2, Lo/Account$extraCallback$extraCallback;->onNavigationEvent:Landroid/os/Handler;

    new-instance v4, Lo/AvailableCredUpiAccountsInfoJsonAdapter;

    invoke-direct {v4, p0, v3, v0}, Lo/AvailableCredUpiAccountsInfoJsonAdapter;-><init>(Lo/Account$extraCallback;Lo/Account;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    invoke-direct {p0, v2, v4}, Lo/Account$extraCallback;->onMessageChannelReady(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(ILo/p$a;ILjava/lang/Object;J)V
    .locals 12

    move-object v0, p0

    .line 695
    new-instance v11, Lo/Account$ICustomTabsCallback;

    move-wide/from16 v1, p5

    .line 702
    invoke-direct {p0, v1, v2}, Lo/Account$extraCallback;->onNavigationEvent(J)J

    move-result-wide v7

    const/4 v2, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v11

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lo/Account$ICustomTabsCallback;-><init>(IILo/p$a;ILjava/lang/Object;JJ)V

    .line 695
    invoke-virtual {p0, v11}, Lo/Account$extraCallback;->extraCallback(Lo/Account$ICustomTabsCallback;)V

    return-void
.end method

.method public final onPostMessage(Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;Ljava/io/IOException;Z)V
    .locals 10

    .line 643
    iget-object v0, p0, Lo/Account$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Account$extraCallback$extraCallback;

    .line 644
    iget-object v4, v1, Lo/Account$extraCallback$extraCallback;->ICustomTabsCallback:Lo/Account;

    .line 645
    iget-object v1, v1, Lo/Account$extraCallback$extraCallback;->onNavigationEvent:Landroid/os/Handler;

    new-instance v9, Lo/AvailableCredUpiAccountsInfo;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lo/AvailableCredUpiAccountsInfo;-><init>(Lo/Account$extraCallback;Lo/Account;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;Ljava/io/IOException;Z)V

    invoke-direct {p0, v1, v9}, Lo/Account$extraCallback;->onMessageChannelReady(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/Account;)V
    .locals 3

    .line 357
    iget-object v0, p0, Lo/Account$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Account$extraCallback$extraCallback;

    .line 358
    iget-object v2, v1, Lo/Account$extraCallback$extraCallback;->ICustomTabsCallback:Lo/Account;

    if-ne v2, p1, :cond_0

    .line 359
    iget-object v2, p0, Lo/Account$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method final synthetic onPostMessage(Lo/Account;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
    .locals 2

    .line 499
    iget v0, p0, Lo/Account$extraCallback;->extraCallback:I

    iget-object v1, p0, Lo/Account$extraCallback;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-interface {p1, v0, v1, p2, p3}, Lo/Account;->onMessageChannelReady(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    return-void
.end method

.method final synthetic onPostMessage(Lo/Account;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;Ljava/io/IOException;Z)V
    .locals 7

    .line 648
    iget v1, p0, Lo/Account$extraCallback;->extraCallback:I

    iget-object v2, p0, Lo/Account$extraCallback;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lo/Account;->onNavigationEvent(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final onPostMessage(Lo/PaymentRequestJsonAdapter;IJ)V
    .locals 13

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v11, p3

    .line 388
    invoke-virtual/range {v0 .. v12}, Lo/Account$extraCallback;->ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;IILo/p$a;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method public final onPostMessage(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IILo/p$a;ILjava/lang/Object;JJJJJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PaymentRequestJsonAdapter;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Lo/p$a;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 543
    new-instance v11, Lo/Account$onMessageChannelReady;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Lo/Account$onMessageChannelReady;-><init>(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Lo/Account$ICustomTabsCallback;

    move-wide/from16 v2, p9

    .line 552
    invoke-direct {p0, v2, v3}, Lo/Account$extraCallback;->onNavigationEvent(J)J

    move-result-wide v2

    move-wide/from16 v4, p11

    .line 553
    invoke-direct {p0, v4, v5}, Lo/Account$extraCallback;->onNavigationEvent(J)J

    move-result-wide v4

    move-object/from16 p9, v1

    move/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move/from16 p13, p7

    move-object/from16 p14, p8

    move-wide/from16 p15, v2

    move-wide/from16 p17, v4

    invoke-direct/range {p9 .. p18}, Lo/Account$ICustomTabsCallback;-><init>(IILo/p$a;ILjava/lang/Object;JJ)V

    .line 543
    invoke-virtual {p0, v11, v1}, Lo/Account$extraCallback;->extraCallback(Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    return-void
.end method
