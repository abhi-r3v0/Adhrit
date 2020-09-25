.class public final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ICustomTabsCallback;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onTransact;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onMessageChannelReady;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onNavigationEvent;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$extraCallback;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Landroid/util/SparseIntArray;

.field private static final ICustomTabsCallback$Stub:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static asBinder:I

.field private static final asInterface:Landroid/util/SparseIntArray;

.field private static final extraCallback:Landroid/util/SparseIntArray;

.field private static final onMessageChannelReady:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;",
            "Ljava/util/List<",
            "Lo/isAirplaneModeOn;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Ljava/util/regex/Pattern;

.field private static final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final onRelationshipValidationResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "^\\D?(\\d+)$"

    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onNavigationEvent:Ljava/util/regex/Pattern;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onMessageChannelReady:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 84
    sput v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asBinder:I

    .line 873
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 874
    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    .line 902
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x42

    .line 874
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 875
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    const/4 v3, 0x2

    .line 916
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x4d

    .line 875
    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 876
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    const/4 v5, 0x4

    .line 903
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x58

    .line 876
    invoke-virtual {v0, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 877
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    const/16 v7, 0x8

    .line 917
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x64

    .line 877
    invoke-virtual {v0, v9, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 878
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    const/16 v9, 0x10

    .line 904
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x6e

    .line 878
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 879
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    const/16 v11, 0x20

    .line 918
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x7a

    .line 879
    invoke-virtual {v0, v13, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 880
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    const/16 v13, 0x40

    .line 905
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0xf4

    .line 880
    invoke-virtual {v0, v15, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 882
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 883
    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v15, 0xa

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 885
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v15, 0xb

    invoke-virtual {v0, v15, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 886
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v15, 0xc

    invoke-virtual {v0, v15, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 887
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v7, 0xd

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 888
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v7, 0x14

    invoke-virtual {v0, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 889
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v9, 0x15

    invoke-virtual {v0, v9, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 890
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v9, 0x80

    .line 919
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v15, 0x16

    .line 890
    invoke-virtual {v0, v15, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 891
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v9, 0x100

    .line 906
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v7, 0x1e

    .line 891
    invoke-virtual {v0, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 892
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v7, 0x200

    .line 920
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v5, 0x1f

    .line 892
    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 893
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v5, 0x400

    invoke-virtual {v0, v11, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 894
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v7, 0x800

    const/16 v11, 0x28

    invoke-virtual {v0, v11, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 895
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v11, 0x1000

    const/16 v3, 0x29

    invoke-virtual {v0, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 896
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v3, 0x2000

    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 897
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/16 v1, 0x4000

    const/16 v3, 0x32

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 898
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const v3, 0x8000

    const/16 v7, 0x33

    invoke-virtual {v0, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 899
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    const/high16 v7, 0x10000

    const/16 v3, 0x34

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 901
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 902
    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const-string v3, "L30"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const-string v3, "L60"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const-string v3, "L63"

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const-string v3, "L90"

    invoke-interface {v0, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const-string v3, "L93"

    invoke-interface {v0, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "L120"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "L123"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L150"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L153"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const/high16 v1, 0x40000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L156"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const/high16 v1, 0x100000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L180"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const/high16 v1, 0x400000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L183"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const/high16 v1, 0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "L186"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const-string v1, "H30"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const-string v1, "H60"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const-string v1, "H63"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const-string v1, "H90"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const-string v1, "H93"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "H120"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "H123"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "H150"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "H153"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const/high16 v1, 0x80000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "H156"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const/high16 v1, 0x200000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "H180"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const/high16 v1, 0x800000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "H183"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    const/high16 v1, 0x2000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "H186"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 931
    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onRelationshipValidationResult:Ljava/util/Map;

    const-string v1, "00"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onRelationshipValidationResult:Ljava/util/Map;

    const-string v1, "01"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onRelationshipValidationResult:Ljava/util/Map;

    const-string v3, "02"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onRelationshipValidationResult:Ljava/util/Map;

    const-string v5, "03"

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onRelationshipValidationResult:Ljava/util/Map;

    const-string v7, "04"

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onRelationshipValidationResult:Ljava/util/Map;

    const-string v7, "05"

    invoke-interface {v0, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onRelationshipValidationResult:Ljava/util/Map;

    const-string v7, "06"

    invoke-interface {v0, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onRelationshipValidationResult:Ljava/util/Map;

    const-string v7, "07"

    invoke-interface {v0, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onRelationshipValidationResult:Ljava/util/Map;

    const-string v7, "08"

    invoke-interface {v0, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onRelationshipValidationResult:Ljava/util/Map;

    const-string v7, "09"

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 943
    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback$Stub:Ljava/util/Map;

    const-string v1, "04"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback$Stub:Ljava/util/Map;

    const-string v1, "05"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback$Stub:Ljava/util/Map;

    const-string v1, "06"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback$Stub:Ljava/util/Map;

    const-string v1, "07"

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback$Stub:Ljava/util/Map;

    const-string v1, "08"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback$Stub:Ljava/util/Map;

    const-string v1, "09"

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 954
    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asInterface:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 955
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asInterface:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 956
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asInterface:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 957
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asInterface:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 958
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asInterface:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 959
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asInterface:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 960
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asInterface:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 961
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asInterface:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 962
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asInterface:Landroid/util/SparseIntArray;

    const/16 v1, 0x17

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 963
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asInterface:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 964
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asInterface:Landroid/util/SparseIntArray;

    const/16 v1, 0x27

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 965
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asInterface:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static ICustomTabsCallback()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 187
    sget v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asBinder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    const-string/jumbo v1, "video/avc"

    .line 190
    invoke-static {v1, v0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback(Ljava/lang/String;ZZ)Lo/isAirplaneModeOn;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v1}, Lo/isAirplaneModeOn;->onMessageChannelReady()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v1, v0

    .line 193
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onNavigationEvent(I)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const v0, 0x54600

    goto :goto_1

    :cond_1
    const v0, 0x2a300

    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 199
    :cond_2
    sput v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asBinder:I

    .line 201
    :cond_3
    sget v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asBinder:I

    return v0
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\\."

    .line 219
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 220
    aget-object v3, v1, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "mp4a"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_1
    const-string v2, "hvc1"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "hev1"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "dvhe"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "dvh1"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_5
    const-string v2, "avc2"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_6
    const-string v5, "avc1"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    return-object v0

    .line 231
    :pswitch_0
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 229
    :pswitch_1
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 226
    :pswitch_2
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 223
    :pswitch_3
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2ddf23 -> :sswitch_6
        0x2ddf24 -> :sswitch_5
        0x2f3cdb -> :sswitch_4
        0x2f3d0f -> :sswitch_3
        0x30d038 -> :sswitch_2
        0x310dbc -> :sswitch_1
        0x333790 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 661
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, "Ignoring malformed MP4A codec string: "

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 662
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 667
    :try_start_0
    aget-object v0, p1, v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 668
    invoke-static {v0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onNavigationEvent(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "audio/mp4a-latm"

    .line 669
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 671
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 672
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->asInterface:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v4, :cond_1

    .line 675
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 679
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method private static ICustomTabsCallback(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$extraCallback;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$extraCallback;",
            ")",
            "Ljava/util/ArrayList<",
            "Lo/isAirplaneModeOn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "secure-playback"

    const-string/jumbo v4, "tunneled-playback"

    .line 251
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 252
    iget-object v12, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 253
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$extraCallback;->onNavigationEvent()I

    move-result v13

    .line 254
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$extraCallback;->onPostMessage()Z

    move-result v14

    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_9

    .line 257
    invoke-interface {v2, v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$extraCallback;->onMessageChannelReady(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    .line 259
    invoke-static {v0, v11, v14, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onMessageChannelReady(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v10, :cond_8

    .line 264
    :try_start_1
    invoke-virtual {v0, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    .line 266
    invoke-interface {v2, v4, v10, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$extraCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    .line 269
    invoke-interface {v2, v4, v10, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$extraCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v6

    .line 271
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onPostMessage:Z

    if-nez v7, :cond_0

    if-nez v6, :cond_8

    :cond_0
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onPostMessage:Z

    if-eqz v6, :cond_1

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 275
    :cond_1
    invoke-interface {v2, v3, v10, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$extraCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    .line 278
    invoke-interface {v2, v3, v10, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$extraCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v6

    .line 280
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onMessageChannelReady:Z

    if-nez v7, :cond_2

    if-nez v6, :cond_8

    :cond_2
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onMessageChannelReady:Z

    if-eqz v6, :cond_3

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 283
    :cond_3
    invoke-static {v11}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback(Ljava/lang/String;)Z

    move-result v16

    if-eqz v14, :cond_4

    .line 284
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onMessageChannelReady:Z

    if-eq v6, v0, :cond_5

    :cond_4
    if-nez v14, :cond_6

    iget-boolean v6, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onMessageChannelReady:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v6, :cond_6

    :cond_5
    const/4 v0, 0x0

    move-object v6, v11

    move-object v7, v12

    move-object v8, v10

    move-object/from16 v17, v10

    move/from16 v10, v16

    move-object v1, v11

    move v11, v0

    .line 287
    :try_start_2
    invoke-static/range {v6 .. v11}, Lo/isAirplaneModeOn;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lo/isAirplaneModeOn;

    move-result-object v0

    .line 286
    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_6
    move-object/from16 v17, v10

    move-object v1, v11

    if-nez v14, :cond_8

    if-eqz v0, :cond_8

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".secure"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    move-object v7, v12

    move-object/from16 v8, v17

    move/from16 v10, v16

    .line 296
    invoke-static/range {v6 .. v11}, Lo/isAirplaneModeOn;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lo/isAirplaneModeOn;

    move-result-object v0

    .line 295
    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v5

    :catch_1
    move-exception v0

    move-object/from16 v17, v10

    move-object v1, v11

    .line 307
    :goto_1
    :try_start_3
    sget v6, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v7, 0x17

    const-string v8, "MediaCodecUtil"

    if-gt v6, v7, :cond_7

    :try_start_4
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Skipping codec "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (failed to query capabilities)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 313
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to query codec "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_9
    return-object v5

    :catch_2
    move-exception v0

    .line 322
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$5;)V

    throw v1
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;ZZ)Lo/isAirplaneModeOn;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 136
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onNavigationEvent(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 137
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/isAirplaneModeOn;

    return-object p0
.end method

.method private static extraCallback(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 549
    array-length v0, p1

    const-string v1, "Ignoring malformed HEVC codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    .line 551
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 555
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onNavigationEvent:Ljava/util/regex/Pattern;

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 556
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    .line 557
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 560
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 562
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "2"

    .line 564
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v4, 0x2

    :goto_0
    const/4 p0, 0x3

    .line 570
    aget-object p0, p1, p0

    .line 571
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onPostMessage:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_3

    .line 573
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown HEVC level string: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 576
    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 567
    :cond_4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown HEVC profile string: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static extraCallback()Lo/isAirplaneModeOn;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "audio/raw"

    .line 118
    invoke-static {v1, v0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback(Ljava/lang/String;ZZ)Lo/isAirplaneModeOn;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    iget-object v0, v0, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0}, Lo/isAirplaneModeOn;->onNavigationEvent(Ljava/lang/String;)Lo/isAirplaneModeOn;

    move-result-object v0

    return-object v0
.end method

.method private static extraCallback(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3

    .line 387
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    if-nez p2, :cond_0

    const-string p0, ".secure"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_0

    .line 392
    :cond_0
    sget p0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 p2, 0x15

    if-ge p0, p2, :cond_2

    const-string p0, "CIPAACDecoder"

    .line 393
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CIPMP3Decoder"

    .line 394
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CIPVorbisDecoder"

    .line 395
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CIPAMRNBDecoder"

    .line 396
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "AACDecoder"

    .line 397
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "MP3Decoder"

    .line 398
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return v0

    .line 404
    :cond_2
    sget p0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 p2, 0x12

    if-ge p0, p2, :cond_4

    const-string p0, "OMX.MTK.AUDIO.DECODER.AAC"

    .line 405
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string p2, "a70"

    .line 406
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->onPostMessage:Ljava/lang/String;

    const-string p2, "Xiaomi"

    .line 407
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string p2, "HM"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return v0

    .line 413
    :cond_4
    sget p0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 p2, 0x10

    if-ne p0, p2, :cond_6

    const-string p0, "OMX.qcom.audio.decoder.mp3"

    .line 414
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v1, "dlxu"

    .line 415
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v1, "protou"

    .line 416
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string/jumbo v1, "ville"

    .line 417
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string/jumbo v1, "villeplus"

    .line 418
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string/jumbo v1, "villec2"

    .line 419
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v1, "gee"

    .line 420
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v1, "C6602"

    .line 421
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v1, "C6603"

    .line 422
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v1, "C6606"

    .line 423
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v1, "C6616"

    .line 424
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v1, "L36h"

    .line 425
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v1, "SO-02E"

    .line 426
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    return v0

    .line 431
    :cond_6
    sget p0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    if-ne p0, p2, :cond_8

    const-string p0, "OMX.qcom.audio.decoder.aac"

    .line 432
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string p2, "C1504"

    .line 433
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string p2, "C1505"

    .line 434
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string p2, "C1604"

    .line 435
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string p2, "C1605"

    .line 436
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    return v0

    .line 441
    :cond_8
    sget p0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 p2, 0x18

    const-string/jumbo v1, "samsung"

    if-ge p0, p2, :cond_b

    const-string p0, "OMX.SEC.aac.dec"

    .line 442
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_9
    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->onPostMessage:Ljava/lang/String;

    .line 443
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string/jumbo p2, "zeroflte"

    .line 444
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string/jumbo p2, "zerolte"

    .line 445
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string/jumbo p2, "zenlte"

    .line 446
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string p2, "SC-05G"

    .line 447
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string p2, "marinelteatt"

    .line 448
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string p2, "404SC"

    .line 449
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string p2, "SC-04G"

    .line 450
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string p2, "SCV31"

    .line 451
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    return v0

    .line 457
    :cond_b
    sget p0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const-string p2, "jflte"

    const/16 v2, 0x13

    if-gt p0, v2, :cond_d

    const-string p0, "OMX.SEC.vp8.dec"

    .line 458
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->onPostMessage:Ljava/lang/String;

    .line 459
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v1, "d2"

    .line 460
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string/jumbo v1, "serrano"

    .line 461
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    .line 462
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string/jumbo v1, "santos"

    .line 463
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string/jumbo v1, "t0"

    .line 464
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    :cond_c
    return v0

    .line 469
    :cond_d
    sget p0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    if-gt p0, v2, :cond_e

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "OMX.qcom.video.decoder.vp8"

    .line 470
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    return v0

    :cond_e
    const-string p0, "audio/eac3-joc"

    .line 475
    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    .line 476
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x1

    return p0

    :cond_10
    :goto_0
    return v0
.end method

.method private static extraCallback(Ljava/lang/String;)Z
    .locals 2

    .line 515
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "ODROID-XU3"

    .line 516
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "Nexus 10"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "OMX.Exynos.AVC.Decoder"

    .line 517
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static onMessageChannelReady(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 580
    array-length v0, p1

    const-string v1, "Ignoring malformed AVC codec string: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v2, :cond_0

    .line 582
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    const/4 v0, 0x1

    .line 588
    :try_start_0
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    .line 590
    aget-object v5, p1, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 591
    aget-object p1, p1, v0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 592
    :cond_1
    array-length v5, p1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_4

    .line 594
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 595
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 606
    :goto_0
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 608
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown AVC profile: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 611
    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 613
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown AVC level: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 616
    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 598
    :cond_4
    :try_start_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 602
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static onMessageChannelReady(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 344
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->extraCallback(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 348
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    .line 349
    array-length p2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v2, p0, v1

    .line 350
    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "video/dolby-vision"

    .line 355
    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "OMX.MS.HEVCDV.Decoder"

    .line 358
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "video/hevcdv"

    return-object p0

    :cond_3
    const-string p0, "OMX.RTK.video.decoder"

    .line 360
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "OMX.realtek.video.decoder.tunneled"

    .line 361
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_4
    const-string/jumbo p0, "video/dv_hevc"

    return-object p0

    :cond_5
    const-string p0, "audio/alac"

    .line 364
    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "OMX.lge.alac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "audio/x-lg-alac"

    return-object p0

    :cond_6
    const-string p0, "audio/flac"

    .line 366
    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "OMX.lge.flac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "audio/x-lg-flac"

    return-object p0

    :cond_7
    return-object v0
.end method

.method private static onNavigationEvent(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/high16 p0, 0x900000

    return p0

    :sswitch_1
    const p0, 0x564000

    return p0

    :sswitch_2
    const/high16 p0, 0x220000

    return p0

    :sswitch_3
    const/high16 p0, 0x200000

    return p0

    :sswitch_4
    const/high16 p0, 0x140000

    return p0

    :sswitch_5
    const p0, 0xe1000

    return p0

    :sswitch_6
    const p0, 0x65400

    return p0

    :sswitch_7
    const p0, 0x31800

    return p0

    :sswitch_8
    const p0, 0x18c00

    return p0

    :cond_0
    const/16 p0, 0x6300

    return p0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_8
        0x10 -> :sswitch_8
        0x20 -> :sswitch_8
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
        0x400 -> :sswitch_4
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized onNavigationEvent(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lo/isAirplaneModeOn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-class v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 155
    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;-><init>(Ljava/lang/String;ZZ)V

    .line 156
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 158
    monitor-exit v0

    return-object v2

    .line 160
    :cond_0
    :try_start_1
    sget v2, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_1

    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onNavigationEvent;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onNavigationEvent;-><init>(ZZ)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onMessageChannelReady;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onMessageChannelReady;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$5;)V

    .line 164
    :goto_0
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$extraCallback;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 165
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    if-gt v4, p1, :cond_2

    sget p1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v2, 0x17

    if-gt p1, v2, :cond_2

    .line 168
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onMessageChannelReady;

    invoke-direct {p1, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onMessageChannelReady;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$5;)V

    .line 169
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$extraCallback;)Ljava/util/ArrayList;

    move-result-object p2

    .line 170
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "MediaCodecUtil"

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Assuming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 172
    invoke-virtual {p2, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/isAirplaneModeOn;

    iget-object v3, v3, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {p1, v2}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_2
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onNavigationEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 176
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 177
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {p1, v1, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static onNavigationEvent(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/isAirplaneModeOn;",
            ">;)V"
        }
    .end annotation

    const-string v0, "audio/raw"

    .line 491
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 492
    new-instance p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onTransact;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onTransact;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$5;)V

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    .line 493
    :cond_0
    sget p0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-ge p0, v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_2

    const/4 p0, 0x0

    .line 494
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/isAirplaneModeOn;

    iget-object p0, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "OMX.SEC.mp3.dec"

    .line 495
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OMX.SEC.MP3.Decoder"

    .line 496
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OMX.brcm.audio.mp3.decoder"

    .line 497
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 502
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ICustomTabsCallback;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ICustomTabsCallback;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$5;)V

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private static onPostMessage(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 522
    array-length v0, p1

    const-string v1, "Ignoring malformed Dolby Vision codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    .line 524
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 528
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onNavigationEvent:Ljava/util/regex/Pattern;

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    .line 530
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 533
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 534
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 536
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown Dolby Vision profile string: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const/4 p0, 0x2

    .line 539
    aget-object p0, p1, p0

    .line 540
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_3

    .line 542
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown Dolby Vision level string: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 545
    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
