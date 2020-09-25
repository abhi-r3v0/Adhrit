.class public final Lo/intent$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/intent$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/content/Context;Lo/getTranslateY;Lo/isEncrypt;Lo/AFExecutor$1$1;ZZZLo/urlString;Lo/CustomVersionedParcelable;Lo/getReferrerClickTimestampSeconds;Lo/getReferrerClickTimestampSeconds;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/setPosition;IIZILo/Ι;ZI)Lo/isLayoutRtl$onMessageChannelReady;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/getTranslateY;",
            "Lo/isEncrypt;",
            "Lo/AFExecutor$1$1;",
            "ZZZ",
            "Lo/urlString;",
            "Lo/CustomVersionedParcelable;",
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;",
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lo/getInstallReferrer;",
            "Lo/getInstallReferrer;",
            "Lo/endConnection;",
            "Lo/setPosition;",
            "IIZI",
            "Lo/\u0399;",
            "ZI)",
            "Lo/isLayoutRtl$onMessageChannelReady;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    .line 487
    new-instance v23, Lo/isLayoutRtl$onMessageChannelReady;

    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v22}, Lo/isLayoutRtl$onMessageChannelReady;-><init>(Landroid/content/Context;Lo/getTranslateY;Lo/isEncrypt;Lo/AFExecutor$1$1;ZZZLo/urlString;Lo/CustomVersionedParcelable;Lo/getReferrerClickTimestampSeconds;Lo/getReferrerClickTimestampSeconds;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/setPosition;IIZILo/Ι;ZI)V

    return-object v23
.end method
